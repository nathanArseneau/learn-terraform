### Day 22 — Module versioning and repository structure

**Read**

- [Module creation: recommended pattern](https://developer.hashicorp.com/terraform/tutorials/modules/pattern-module-creation)
- [Refactor monolithic Terraform configuration](https://developer.hashicorp.com/terraform/tutorials/modules/organize-configuration)
- [Terraform style guide](https://developer.hashicorp.com/terraform/language/style)
- [terraform workspace command](https://developer.hashicorp.com/terraform/cli/commands/workspace)

**Do** — Move `modules/web-app` into its own Git repository, tag it `v0.1.0`, and source it from `day-22/` with `source = "git::https://github.com/you/terraform-docker-web-app.git?ref=v0.1.0"`. Make a breaking change, tag `v0.2.0`, and upgrade deliberately.

**Push** — Deploy dev and prod versions of the stack three ways: separate directories, separate `.tfvars` files, and CLI workspaces. Write down in `notes/day-22.md` the trade-offs of each. Then read the style guide end to end and reformat your whole repo to match it.

**Watch out** — CLI workspaces share one backend and one configuration. They are good for short-lived parallel copies, and a poor fit for environments that genuinely differ. Expect the exam to test that they exist; expect interviewers to test that you know their limits.
