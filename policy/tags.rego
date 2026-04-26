package main

expected_tags := {
    "project": "my-gallery",
    "created": "terraform"
}

deny[msg] {
    resource := input.resource_changes[_]
    
    actions := resource.change.actions
    count({"create", "update"} & cast_set(actions)) > 0

    actual_tags := resource.change.after.tags
    
    some key
    expected_val := expected_tags[key]
    actual_val := actual_tags[key]
    
    actual_val != expected_val

    msg := sprintf("POLICY ERROR: Resource '%s' must have tag '%s' set to '%s'. Current value: '%s'", [
        resource.address, 
        key, 
        expected_val, 
        if actual_val == null then "MISSING" else actual_val
    ])
}