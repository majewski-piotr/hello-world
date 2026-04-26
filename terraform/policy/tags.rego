package main

# Definicja wymaganych tagów
expected_tags := {
    "project": "my-gallery",
    "created": "terraform"
}

# Reguła deny jako zbiór komunikatów
deny[msg] {
    # 1. Pobierz zmiany w zasobach
    resource := input.resource_changes[_]
    
    # 2. Sprawdzaj tylko akcje 'create' lub 'update'
    actions := resource.change.actions
    count({a | actions[a]; a == "create" or a == "update"}) > 0

    # 3. Pobierz tagi (bezpiecznie, obsłuż brak sekcji tags)
    actual_tags := object.get(resource.change.after, "tags", {})
    
    # 4. Iteruj po wymaganych tagach
    some key
    expected_val := expected_tags[key]
    actual_val := object.get(actual_tags, key, "MISSING")
    
    # 5. Porównaj wartości
    actual_val != expected_val

    # 6. Wygeneruj komunikat błędu
    msg := sprintf("POLICY ERROR: Resource '%s' must have tag '%s' set to '%s'. Current value: '%s'", [
        resource.address, 
        key, 
        expected_val, 
        actual_val
    ])
}