### Day 35 — Version upgrades: core and providers

Upgrades are the routine maintenance nobody teaches and everybody eventually botches.

**Read**

- [Manage Terraform versions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/versions)
- [Upgrade guides](https://developer.hashicorp.com/terraform/language/upgrade-guides)
- [v1.x compatibility promises](https://developer.hashicorp.com/terraform/language/v1-compatibility-promises)
- [Lock and upgrade provider versions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/provider-versioning)

**Do** — Two upgrades, both deliberate.

1. **The provider.** Bump the Docker provider from `~> 3.0` to `~> 4.0` in a branch. Run `init -upgrade`, read the diff in `.terraform.lock.hcl`, run `plan`, and fix whatever broke. Read the provider's migration guide on its GitHub repository before you start, not after.
2. **Terraform itself.** Install an older CLI — 1.5, say — alongside your current one using a version manager. Pin `required_version = "~> 1.5.0"`, apply, then upgrade the pin and the binary and apply again. Note what Terraform does to the state file's `version` and `terraform_version` fields.

**Push** — Answer in `notes/day-35.md`: what does the v1.x compatibility promise actually guarantee, and what does it explicitly not cover? Then work out what would happen if a colleague on Terraform 1.5 ran `apply` against state last written by your 1.9. Try it.

**Watch out** — Treat every core upgrade as one-way. Within 1.x an older CLI may still read state written by a newer one, but HashiCorp does not guarantee it, newer features can produce state older versions cannot read, and there is no supported way to revert once you have moved forward. This is why `required_version` is not optional hygiene on a shared configuration — it is the thing stopping one person's upgrade from locking everyone else out.
