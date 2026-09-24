### Day 12 — Complex types

**Read**

- [Complex types](https://developer.hashicorp.com/terraform/language/v1.12.x/expressions/type-constraints)
- [Customize modules with object attributes](https://developer.hashicorp.com/terraform/tutorials/configuration-language/module-object-attributes)

**Do** — Replace your scalar variables with a single `map(object({ image = string, port = number, replicas = number }))` describing several services. Do not build the containers from it yet; just get the type constraint to validate and print it with `terraform console`.

**Push** — Make `replicas` optional with `optional(number, 1)`. Then deliberately pass a wrong type and read the error message closely — Terraform's type errors tell you exactly which attribute and which key failed.

**Watch out** — Know the difference between `list`, `set` and `tuple`, and between `map` and `object`. A set has no ordering and no duplicates, which is why `for_each` accepts one and `count` does not.
