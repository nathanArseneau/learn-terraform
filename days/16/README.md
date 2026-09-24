### Day 16 — State on the command line

**Read**

- [Manage resources in Terraform state](https://developer.hashicorp.com/terraform/tutorials/state/state-cli)
- [Terraform state](https://developer.hashicorp.com/terraform/language/v1.12.x/state)
- [Command: state](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/state)
- [Resource addressing](https://developer.hashicorp.com/terraform/cli/v1.12.x/state/resource-addressing)

**Do** — In `day-16/`, rebuild a small Docker stack. Practise every subcommand: `state list`, `state show`, `state mv`, `state rm`, `state pull`, `state push`. Rename a resource in your configuration, use `state mv` to match, and confirm `plan` is empty afterwards.

**Push** — Use `state rm` to orphan a container, then `terraform import` it back. Then split one state file into two by `state mv -state-out=` — on local state, because -state-out only works with the local backend. Finally, revisit your Day 1 note and rewrite it now that you have seen state up close.

**Watch out** — `state rm` removes Terraform's knowledge of a resource; it does not destroy anything. `destroy` does the opposite. Confusing these in production is how people delete production.
