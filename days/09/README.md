### Day 9 — Dependencies and the graph

**Read**

- [Create resource dependencies](https://developer.hashicorp.com/terraform/tutorials/configuration-language/dependencies)
- [References to named values](https://developer.hashicorp.com/terraform/language/v1.12.x/expressions/references)
- [Resource addressing](https://developer.hashicorp.com/terraform/cli/v1.12.x/state/resource-addressing)
- [Resource graph](https://developer.hashicorp.com/terraform/internals/v1.12.x/graph)

**Do** — In `day-09/`, create an implicit dependency by referencing `docker_network.app.name` from a container's `networks_advanced` block. Then add a second container that has no natural reference and force ordering with `depends_on`. Destroy the stack and watch the reverse ordering in the output.

**Push** — Deliberately create a dependency cycle between two resources and read the error Terraform gives you. Then use `terraform graph -type=plan` and compare the graph before and after adding `depends_on`.

**Watch out** — Prefer implicit dependencies. `depends_on` is a blunt instrument that hides the real relationship and makes plans more conservative. The exam expects you to know both; production expects you to reach for the first.
