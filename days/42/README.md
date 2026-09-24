### Day 42 — Provider authentication in depth

**Read**

- [Provider configuration](https://developer.hashicorp.com/terraform/language/providers/configuration)
- [Providers within modules](https://developer.hashicorp.com/terraform/language/modules/develop/providers)
- [aws\_caller\_identity data source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)
- [aws\_iam\_session\_context data source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_session_context)
- [AWS provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) — the authentication and configuration section

**Do** — In `day-42/`, authenticate the AWS provider three ways and prove which identity Terraform is really using each time with outputs from `aws_caller_identity` and `aws_iam_session_context`: environment variables, a named shared-config profile, and an `assume_role` block in the provider configuration. For the third, create the role itself with Terraform first, in a separate configuration, with a trust policy allowing your user to assume it.

**Push** — Configure two aliased AWS providers in one configuration, one using your own identity and one assuming the role, and pass the aliased one into a child module. Then write down in `notes/day-42.md` the order in which the AWS provider looks for credentials, and verify one step of that order by setting two sources at once and seeing which wins.

**Watch out** — Credentials never go in the provider block. The exam's provider-authentication objective is about knowing where they *should* come from, and a hardcoded key is always the wrong answer.
