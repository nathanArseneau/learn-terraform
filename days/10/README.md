### Day 10 — Variables

**Read**

- [Customize Terraform configuration with variables](https://developer.hashicorp.com/terraform/tutorials/configuration-language/variables)
- [variable block reference](https://developer.hashicorp.com/terraform/language/v1.12.x/block/variable)
- [Manage values in modules](https://developer.hashicorp.com/terraform/language/v1.12.x/values)

**Do** — Parameterize the Day 7 stack completely: image name, tag, external port, network name, container count. Add a `validation` block rejecting ports below 1024. Then set the same variable five different ways and record which wins: default, `terraform.tfvars`, `*.auto.tfvars`, `TF_VAR_` environment variable, and `-var` on the command line.

**Push** — Write `notes/day-10.md` listing the precedence order from lowest to highest. Then make a variable `nullable = false` and another with no default, and observe how Terraform prompts.

**Watch out** — Variable precedence is near-guaranteed to appear on the exam. `-var` and -var-file sit at the top together, and whichever appears last on the command line wins. Environment variables lose to every file.
