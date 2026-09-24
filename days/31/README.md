### Day 31 — HCP Terraform, part one

**Read**

- [HCP Terraform overview](https://developer.hashicorp.com/terraform/cloud-docs)
- [The HCP Terraform workflow](https://developer.hashicorp.com/terraform/cloud-docs/overview)
- [Workspaces](https://developer.hashicorp.com/terraform/cloud-docs/workspaces)
- [Remote operations](https://developer.hashicorp.com/terraform/cloud-docs/run/remote-operations)
- [Get started with HCP Terraform](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started)
- [Use the CLI with HCP Terraform](https://developer.hashicorp.com/terraform/cli/cloud)
- [The cloud block](https://developer.hashicorp.com/terraform/cli/cloud/settings)
- [Command: login](https://developer.hashicorp.com/terraform/cli/commands/login)

**Do** — Sign up for the free tier. Run `terraform login`, then add a `cloud` block to a copy of your Docker configuration and migrate state with [Migrate state to HCP Terraform](https://developer.hashicorp.com/terraform/tutorials/cli/cloud-migrate). Set the execution mode to local, since HCP Terraform's remote runners cannot reach your laptop's Docker daemon.

**Push** — Create a second workspace for an AWS S3 bucket, run it in remote execution mode, and set up [dynamic provider credentials](https://developer.hashicorp.com/terraform/tutorials/cloud/dynamic-credentials) so no long-lived AWS keys are stored anywhere.

**Watch out** — The `cloud` block and the `backend` block are mutually exclusive. Understand what remote execution changes: where the plan runs, where variables come from, and who can approve an apply.
