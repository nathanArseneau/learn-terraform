### Day 28 — Sensitive data

**Read**

- [Manage sensitive data](https://developer.hashicorp.com/terraform/language/v1.12.x/manage-sensitive-data)
- [Protect sensitive input variables](https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables)
- [ephemeral block reference](https://developer.hashicorp.com/terraform/language/ephemeral)
- [Inject secrets using the Vault provider](https://developer.hashicorp.com/terraform/tutorials/secrets/secrets-vault)

**Do** — In `day-28/`, add a `sensitive = true` variable holding a database password and pass it into a container as an environment variable. Apply, then grep the state file for the password. Find it in plaintext. Sit with that for a moment.

**Push** — Read about ephemeral resources and write-only arguments, which exist precisely to keep values out of state and plan files. Then work through the Vault tutorial with a dev-mode Vault container you provision with the Docker provider.

**Watch out** — `sensitive` redacts CLI output only. It does not encrypt state, and it does not stop a downstream output or a provider log from leaking the value. The correct answers to "how do I keep secrets safe in Terraform" are: keep them out of state, restrict who can read the backend, and encrypt at rest.
