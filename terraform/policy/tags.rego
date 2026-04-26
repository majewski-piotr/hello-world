package main

expected_tags := {
    "project": "my-gallery",
    "created": "terraform"
}

deny[msg] {
    resource := input.resource_changes[_]
    
    # Check only created or updated resources
    actions := resource.change.actions
    count({"create", "update"} & cast_set(actions)) > 0

    # Get the tags, or an empty object if no tags exist at all
    actual_tags := object.get(resource.change.after, "tags", {})
    
    some key
    expected_val := expected_tags[key]
    
    # Get the actual value; if key is missing, use "MISSING" as the default
    actual_val := object.get(actual_tags, key, "MISSING")
    
    actual_val != expected_val

    msg := sprintf("POLICY ERROR: Resource '%s' must have tag '%s' set to '%s'. Current value: '%s'", [
        resource.address, 
        key, 
        expected_val, 
        actual_val
    ])
}