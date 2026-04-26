package main

import future.keywords.if
import future.keywords.in
import future.keywords.contains

expected_tags := {
    "project": "my-gallery",
    "created": "terraform"
}

# W Rego v1 dla zbiorów (sets) musisz użyć: deny contains msg if { ... }
deny contains msg if {
    some resource in input.resource_changes
    
    some action in resource.change.actions
    action in {"create", "update"}

    actual_tags := object.get(resource.change.after, "tags", {})
    
    some key, expected_val in expected_tags
    actual_val := object.get(actual_tags, key, "MISSING")
    
    actual_val != expected_val

    msg := sprintf("POLICY ERROR: Resource '%s' must have tag '%s' set to '%s'. Current value: '%s'", [
        resource.address, 
        key, 
        expected_val, 
        actual_val
    ])
}