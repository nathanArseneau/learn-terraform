### Day 18 — Import

**Read**

- [Import Terraform configuration](https://developer.hashicorp.com/terraform/tutorials/state/state-import)
- [Command: import](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/import)
- [Import existing resources](https://developer.hashicorp.com/terraform/cli/v1.12.x/import/usage)

**Do** — The one day you are allowed to click. Run `docker network create legacy-net` and `docker run -d --name legacy-web -p 8100:80 httpd:2.4` by hand. Now bring both under management in `day-18/` using `import` blocks and `terraform plan -generate-config-out=generated.tf`. Clean up the generated configuration until `plan` reports no changes.

**Push** — Import the S3 bucket from Day 16 into a fresh configuration, including its versioning and encryption sub-resources. AWS resources have far more attributes than Docker ones; getting to an empty plan is genuinely hard and teaches you how much a provider hides.

**Watch out** — The `import` block is configuration-driven and reviewable in a pull request. The `terraform import` command is imperative and leaves no trace. Prefer the block; know both exist.
