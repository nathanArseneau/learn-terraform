### Day 50 — Refactoring a module across versions

**Read**

- [Refactoring modules](https://developer.hashicorp.com/terraform/language/modules/develop/refactoring)
- [Version constraints](https://developer.hashicorp.com/terraform/language/expressions/version-constraints)
- [Module sources](https://developer.hashicorp.com/terraform/language/modules/sources)
- [Module block syntax](https://developer.hashicorp.com/terraform/language/modules/syntax)

**Do** — Publish a small AWS module — a bucket plus its versioning and encryption resources — to a Git repository and tag `v1.0.0`. Consume it from `day-50/` and apply. Now, in the module, rename the bucket resource and split its encryption into a separate resource. Ship the `moved` blocks *inside the module*, tag `v2.0.0`, and upgrade the consumer. The consumer's plan must show only moves.

**Push** — Remove a resource from the module in `v3.0.0` with a `removed` block so consumers keep the real object. Then answer in `notes/day-50.md`: how long should a module keep old `moved` blocks, and what happens to a consumer who jumps from `v1` straight to `v3` if you delete them early?

**Watch out** — Part 1 used `moved` in your own root module. A module author has a harder job, because the refactor has to be safe for every consumer on every version. That is the difference this exam objective is testing.
