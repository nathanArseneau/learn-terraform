### Day 33 — Automation and CI

**Read**

- [Automate Terraform](https://developer.hashicorp.com/terraform/tutorials/automation)
- [Enterprise patterns](https://developer.hashicorp.com/terraform/tutorials/recommended-patterns)
- [Terraform style guide](https://developer.hashicorp.com/terraform/language/style)

**Do** — Write a GitHub Actions workflow for your repo that runs `fmt -check`, `init`, `validate` and `plan` on every pull request, and posts the plan as a comment. Use the AWS bucket from Day 17 as the backend so CI and your laptop share state.

**Push** — Add [TFLint](https://github.com/terraform-linters/tflint) and [Checkov](https://github.com/bridgecrewio/checkov) to the pipeline, and make the workflow fail on a policy violation rather than merely reporting one. Then add the `terraform test` run from Day 30 as a required check.

**Watch out** — Automated `apply` needs credentials with real power. Think about what a compromised pipeline could do before you give it any. This question comes up in every serious interview.
