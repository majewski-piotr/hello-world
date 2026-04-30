# Policy Rules

This directory contains policy definitions for validating infrastructure changes.

## Overview

The policies are written in Rego and used to enforce standards on Terraform plans before deployment.

## Files

- `terraform/tags.rego` - enforces mandatory AWS tags on created or updated resources

## Policy behavior

The current policy checks each resource change and denies the plan when:

- the resource is being created or updated
- the expected `project` or `created` tag is missing
- the actual tag value does not match the required value

## Notes

All policy comments and documentation are written in English.
