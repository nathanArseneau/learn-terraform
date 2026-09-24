### Day 13 — `count` and `for_each`

**Read**

- [Manage similar resources with count](https://developer.hashicorp.com/terraform/tutorials/configuration-language/count)
- [Manage similar resources with for\_each](https://developer.hashicorp.com/terraform/tutorials/configuration-language/for-each)
- [Meta-arguments](https://developer.hashicorp.com/terraform/language/meta-arguments)

**Do** — In `day-13/`, build containers from your Day 12 map using `count` over a list first. Apply. Now remove the first element of the list and read the plan: Terraform wants to destroy and recreate almost everything. Then rewrite using `for_each` over the map, apply, remove an entry, and compare.

**Push** — Look at `terraform state list` under each approach. Note `docker_container.web[0]` versus `docker_container.web["api"]`. Write down in `notes/day-13.md` the rule you will follow at work for choosing between them.

**Watch out** — This is the single most valuable lesson of Week 2. `count` addresses by position, so inserting or removing an element renumbers everything after it. `for_each` addresses by key, so entries are stable. Use `count` only for a true on/off toggle.
