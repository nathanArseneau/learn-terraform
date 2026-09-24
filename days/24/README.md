### Day 24 — Provider aliases and multiple providers

**Read**

- [Configure Terraform providers](https://developer.hashicorp.com/terraform/tutorials/configuration-language/configure-providers)
- [provider block reference](https://developer.hashicorp.com/terraform/language/v1.12.x/block/provider)
- [Provider requirements](https://developer.hashicorp.com/terraform/language/v1.12.x/providers/requirements)

**Do** — In `day-24/`, write one configuration that uses two providers at once: Docker for a local container and AWS for an S3 bucket. Then add a second AWS provider configuration with `alias = "eu"` in `eu-west-1`, and create a bucket in each region from the same configuration. Use `provider = aws.eu` on the second resource.

**Push** — Pass a specific provider configuration into a child module with the `providers = { aws = aws.eu }` argument. Then remove the argument and observe what the module inherits by default. Write down in `notes/day-24.md` the rule for when a module should declare its own `required_providers` and when it should accept them from the caller.

**Watch out** — This is exam objective 2c, and it is the objective most often skipped by people who only ever use one cloud in one region. Know that the default (unaliased) configuration is inherited automatically, that aliased ones must be passed explicitly, and that a module should never contain its own `provider` block with credentials in it.
