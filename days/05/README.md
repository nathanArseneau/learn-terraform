### Day 5 — Plan in depth

**Read**

- [Create a Terraform plan](https://developer.hashicorp.com/terraform/tutorials/cli/plan)
- [Apply Terraform configuration](https://developer.hashicorp.com/terraform/tutorials/cli/apply)
- [Command: plan](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/plan)
- [Command: apply](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/apply)
- [Command: destroy](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/destroy)
- [Resource graph](https://developer.hashicorp.com/terraform/internals/v1.12.x/graph)

**Do** — Rebuild the Apache stack in `day-05/`. Save a plan with `terraform plan -out=tfplan`, inspect it with `terraform show tfplan`, then apply the saved plan. Change the external port to 8001 and read the plan symbols carefully. Write down what each of `+`, `-`, `~`, `-/+` and `<=` means.

**Push** — Run `terraform show -json tfplan` and pipe it through `jq` to list every resource address and its actions. Machine-readable plans are how policy-as-code and PR automation work; you use this again on Day 33.

**Watch out** — A saved plan file contains resolved values, including sensitive ones. Never commit one and never leave one in an untrusted CI artifact store.
