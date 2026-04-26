package main

# Mandatory for Rego v1 compatibility
import future.keywords.if
import future.keywords.contains

expected_tags := {
    "project": "my-gallery",
    "created": "terraform"
}

# Added 'if' before the rule body and 'contains' for the set
deny contains msg if {
    resource := input.resource_changes[_]
    
    # Check only created or updated resources
    actions := resource.change.actions
    count({"create", "update"} & cast_set(actions)) > 0

    # Get the tags safely
    actual_tags := object.get(resource.change.after, "tags", {})
    
    some key
    expected_val := expected_tags[key]
    
    # Check value; default to "MISSING" if tag doesn't exist
    actual_val := object.get(actual_tags, key, "MISSING")
    
    actual_val != expected_val

    msg := sprintf("POLICY ERROR: Resource '%s' must have tag '%s' set to '%s'. Current value: '%s'", [
        resource.address, 
        key, 
        expected_val, 
        actual_val
    ])
}