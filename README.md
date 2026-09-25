# Learn Terraform

| # | Objective | Day | Primary reference |
| --- | --- | --- | --- |
| 1a | Explain what IaC is | [1](./days/01/README.md) | [Introduction to IaC](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/infrastructure-as-code) |
| 1b | Advantages of IaC patterns | [1](./days/01/README.md) | [Why Terraform](https://developer.hashicorp.com/terraform/intro) |
| 1c | Multi-cloud and service-agnostic workflows | [1](./days/01/README.md), 24 | [Multi-cloud deployment](https://developer.hashicorp.com/terraform/intro/v1.12.x/use-cases) |
| 2a | Install and version providers | 3, 4, 35 | [Dependency lock file](https://developer.hashicorp.com/terraform/language/v1.12.x/files/dependency-lock) |
| 2b | How Terraform uses providers | 3 | [How Terraform works with plugins](https://developer.hashicorp.com/terraform/plugin/how-terraform-works) |
| 2c | Configuration with multiple providers | 24 | [Configure Terraform providers](https://developer.hashicorp.com/terraform/tutorials/configuration-language/configure-providers) |
| 2d | How Terraform uses and manages state | 7, 16 | [Purpose of state](https://developer.hashicorp.com/terraform/language/v1.12.x/state/purpose) |
| 3a | Describe the Terraform workflow | [2](./days/02/README.md), 5 | [Core workflow](https://developer.hashicorp.com/terraform/intro/v1.12.x/core-workflow) |
| 3b | Initialize a working directory | 3 | [Command: init](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/init) |
| 3c | Validate a configuration | 6 | [Command: validate](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/validate) |
| 3d | Generate and review a plan | 5, 27, 34 | [Command: plan](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/plan) |
| 3e | Apply changes | [2](./days/02/README.md), 5 | [Command: apply](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/apply) |
| 3f | Destroy infrastructure | [2](./days/02/README.md) | [Command: destroy](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/destroy) |
| 3g | Formatting and style | 6, 22 | [Command: fmt](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/fmt) |
| 4a | Differentiate `resource` and `data` blocks | 8, 25 | [Data sources](https://developer.hashicorp.com/terraform/language/v1.12.x/data-sources) |
| 4b | Resource attributes and cross-references | 9 | [References to named values](https://developer.hashicorp.com/terraform/language/v1.12.x/expressions/references) |
| 4c | Use variables and outputs | 10, 11 | [variable block](https://developer.hashicorp.com/terraform/language/v1.12.x/block/variable) · [output block](https://developer.hashicorp.com/terraform/language/v1.12.x/block/output) |
| 4d | Understand and use complex types | 12 | [Type constraints](https://developer.hashicorp.com/terraform/language/v1.12.x/expressions/type-constraints) |
| 4e | Expressions and functions | 14 | [Built-in functions](https://developer.hashicorp.com/terraform/language/v1.12.x/functions) |
| 4f | Define resource dependencies | 9 | [Resource graph](https://developer.hashicorp.com/terraform/internals/v1.12.x/graph) |
| 4g | Validate with custom conditions | 29 | [Validate your configuration](https://developer.hashicorp.com/terraform/language/v1.12.x/validate) |
| 4h | Sensitive data and secrets management | 28 | [Manage sensitive data](https://developer.hashicorp.com/terraform/language/v1.12.x/manage-sensitive-data) |
| 5a | How Terraform sources modules | 20 | [Find and use modules](https://developer.hashicorp.com/terraform/registry/modules/use) |
| 5b | Variable scope within modules | 21, 24 | [Build and use a local module](https://developer.hashicorp.com/terraform/tutorials/modules/module-create) |
| 5c | Use modules in configuration | 20, 21 | [Module composition](https://developer.hashicorp.com/terraform/language/v1.12.x/modules/develop/composition) |
| 5d | Manage module versions | 22 | [module block: version](https://developer.hashicorp.com/terraform/language/v1.12.x/block/module) |
| 6a | Describe the local backend | 3, 17 | [Backend type: local](https://developer.hashicorp.com/terraform/language/v1.12.x/backend/local) |
| 6b | Describe state locking | 17, 26 | [State locking](https://developer.hashicorp.com/terraform/language/v1.12.x/state/locking) |
| 6c | Configure remote state via the backend block | 17, 25 | [backend block](https://developer.hashicorp.com/terraform/language/v1.12.x/backend) · [S3 backend](https://developer.hashicorp.com/terraform/language/backend/s3) |
| 6d | Manage resource drift and state | 19, 26, **27** | [Refactor state](https://developer.hashicorp.com/terraform/language/v1.12.x/state/refactor) · [moved](https://developer.hashicorp.com/terraform/language/v1.12.x/block/moved) · [removed](https://developer.hashicorp.com/terraform/language/v1.12.x/block/removed) |
| 7a | Import existing infrastructure | 18 | [Import existing resources](https://developer.hashicorp.com/terraform/cli/v1.12.x/import/usage) |
| 7b | Use the CLI to inspect state | 16, 26, **27** | [Command: state](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/state) |
| 7c | When and how to use verbose logging | 6 | [Debugging Terraform](https://developer.hashicorp.com/terraform/internals/v1.12.x/debugging) |
| 8a | Use HCP Terraform to create infrastructure | 31 | [Workspaces](https://developer.hashicorp.com/terraform/cloud-docs/workspaces) |
| 8b | Collaboration and governance features | 32 | [Policy enforcement](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement) |
| 8c | Organize workspaces and projects | 32 | [Projects](https://developer.hashicorp.com/terraform/cloud-docs/projects) |
| 8d | Configure and use HCP Terraform integration | 31 | [Use the CLI with HCP Terraform](https://developer.hashicorp.com/terraform/cli/cloud) |