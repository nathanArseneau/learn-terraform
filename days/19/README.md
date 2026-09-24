### Day 19 — Drift, refresh and refactoring state

**Read**

- [Manage resource drift](https://developer.hashicorp.com/terraform/tutorials/state/resource-drift)
- [Use refresh-only mode to sync state](https://developer.hashicorp.com/terraform/tutorials/state/refresh)
- [Use configuration to move resources](https://developer.hashicorp.com/terraform/tutorials/state/move-config)
- [Refactor Terraform state](https://developer.hashicorp.com/terraform/language/v1.12.x/state/refactor)
- [moved block reference](https://developer.hashicorp.com/terraform/language/v1.12.x/block/moved)
- [removed block reference](https://developer.hashicorp.com/terraform/language/v1.12.x/block/removed)

**Do** — Create drift deliberately: `docker stop` a managed container, or `docker network disconnect` it. Run `terraform plan -refresh-only` and read what Terraform proposes. Apply the refresh-only plan, then run a normal plan and see it repair the drift.

**Push** — Go back to Day 13 and migrate a `count`-based resource set to `for_each` without destroying anything, using `moved` blocks from `docker_container.web[0]` to `docker_container.web["api"]`. Then use a `removed` block to drop a resource from state while leaving the container running. These two blocks are what separate a safe refactor from an outage.

**Watch out** — `terraform refresh` is deprecated in favour of `terraform apply -refresh-only`. Know that plan and apply both refresh implicitly unless you pass `-refresh=false`.
