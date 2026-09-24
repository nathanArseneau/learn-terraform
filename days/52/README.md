### Day 52 — HCP Terraform runs (multiple choice only)

This objective appears only in the multiple-choice section, so today is reading and flashcards rather than a build.

**Read**

- [Remote operations](https://developer.hashicorp.com/terraform/cloud-docs/run/remote-operations)
- [Viewing and managing runs](https://developer.hashicorp.com/terraform/cloud-docs/run/manage)
- [Run modes and options](https://developer.hashicorp.com/terraform/cloud-docs/run/modes-and-options)
- [Migrating to HCP Terraform](https://developer.hashicorp.com/terraform/cloud-docs/migrate)
- [Workspace variables](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/variables)
- [Dynamic provider credentials](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials)
- [Policy enforcement](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement)

**Do** — In your Part 1 HCP Terraform workspace, trigger each run type at least once: a speculative plan, a refresh-only run, a destroy run, a run with a target, and a run with a resource marked for replacement. Toggle auto-apply and watch what changes. Make one flashcard per run mode and option.

**Push** — Write ten fill-in-the-blank questions for yourself from these pages — setting names, variable categories, run states — and answer them a day later without looking.

**Watch out** — Variable precedence in HCP Terraform is not the same as on the CLI: workspace variables, variable sets and command-line values interact differently. Learn it as its own table rather than reusing Day 10.
