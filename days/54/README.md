### Day 54 — Secrets with Vault

The content list names Vault explicitly under sensitive data. Part 1 left it as a Push; today it gets a full day.

**Read**

- [Sensitive data in state](https://developer.hashicorp.com/terraform/language/state/sensitive-data)
- [Manage sensitive data](https://developer.hashicorp.com/terraform/language/v1.12.x/manage-sensitive-data)
- [Inject secrets into Terraform using the Vault provider](https://developer.hashicorp.com/terraform/tutorials/secrets/secrets-vault)
- [Ephemeral values](https://developer.hashicorp.com/terraform/language/ephemeral)

**Do** — In `day-54/vault/`, run a dev-mode Vault server as a container managed by the Docker provider — Part 1 still pays off. In a second configuration, use the Vault provider to enable a KV version 2 secrets engine and write a database password into it. In a third, read that secret with a data source and store it in an `aws_ssm_parameter` of type `SecureString`. Then grep the third configuration's state file for the password. It is there, in plaintext.

**Push** — Remove the secret from state entirely. Read it with an `ephemeral` resource instead of a data source, and pass it to the parameter through a write-only argument. Confirm with a grep that the state no longer contains it. Then, if you have the time, configure Vault's AWS secrets engine and have it issue short-lived AWS credentials to the AWS provider — the pattern that removes long-lived keys from your pipeline altogether.

**Watch out** — The objective says *analyze* best practices, so expect scenario questions asking where a secret leaks. Rank the approaches from worst to best: a variable in a committed file; a sensitive variable, which still lands in state; a data source read, which also lands in state; and an ephemeral read with write-only arguments, which does not. Protecting the state file matters for every approach except the last.
