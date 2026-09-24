### Day 3 — `terraform init`, providers and the lock file

**Read**

- [Initialize Terraform configuration](https://developer.hashicorp.com/terraform/tutorials/cli/init)
- [Providers overview](https://developer.hashicorp.com/terraform/language/v1.12.x/providers)
- [Specifying provider requirements](https://developer.hashicorp.com/terraform/language/v1.12.x/providers/requirements)
- [The dependency lock file](https://developer.hashicorp.com/terraform/language/v1.12.x/files/dependency-lock)
- [provider block reference](https://developer.hashicorp.com/terraform/language/v1.12.x/block/provider)
- [How Terraform works with plugins](https://developer.hashicorp.com/terraform/plugin/how-terraform-works)
- [Command: init](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/init)

**Do** — Copy Day 2 into `day-03/`. Before running anything, write down what you expect `init` to create. Run it, then explore `.terraform/` and `.terraform.lock.hcl` and compare against your prediction. Delete `.terraform/` entirely and re-init; note what changed and what did not. Commit the lock file.

**Push** — Run `terraform providers lock -platform=linux_amd64 -platform=darwin_arm64 -platform=windows_amd64` and explain what the extra hashes are for. Then build a local mirror with `terraform providers mirror ./mirror` and init against it using `-plugin-dir`.

**Watch out** — `source` in `required_providers` is a registry address, not a URL: `kreuzwerker/docker` resolves to `registry.terraform.io/kreuzwerker/docker`. The exam likes questions about where Terraform looks when only a short name is given.
