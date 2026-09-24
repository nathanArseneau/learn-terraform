### Day 51 — Sharing data across configurations on AWS

**Read**

- [Remote state](https://developer.hashicorp.com/terraform/language/state/remote)
- [The terraform\_remote\_state data source](https://developer.hashicorp.com/terraform/language/state/remote-state-data)
- [tfe\_outputs data source](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/outputs)
- [State locking](https://developer.hashicorp.com/terraform/language/state/locking)

**Do** — Rebuild Day 25 on AWS, in exactly the pattern the exam's resource list names. `day-51/network/` looks up the default VPC's subnets and creates the security groups, storing its state in your S3 backend. `day-51/app/` reads the subnet ids and security group ids with `terraform_remote_state` over that same S3 backend, and builds the Day 45 autoscaling group from them.

**Push** — Move the network configuration into an HCP Terraform workspace and switch the app side to read it with `tfe_outputs`. Write down the difference in what each data source can read, and what access each needs.

**Watch out** — `tfe_outputs` can read only a workspace's outputs, while `terraform_remote_state` needs read access to the whole state. If the exam asks which is safer for sharing across teams, that is the reason.
