### Day 4 — Version constraints

**Read**

- [Lock and upgrade provider versions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/provider-versioning)
- [Manage Terraform versions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/versions)
- [v1.x compatibility promises](https://developer.hashicorp.com/terraform/language/v1-compatibility-promises)

**Do** — In `day-04/`, work through every constraint operator against the Docker provider: `= 3.0.2`, `>= 3.0`, `~> 3.0`, `~> 3.0.1`, and a two-sided range. For each, run `terraform init -upgrade` and record which version resolved. Add a `required_version` for the CLI, set it to something impossible, and read the error.

**Push** — Build a table in `notes/day-04.md` mapping each operator to the highest version it permits. Then answer: why does `~> 3.0` behave differently from `~> 3.0.1`?

**Watch out** — `terraform init` respects the lock file. `terraform init -upgrade` re-resolves constraints and rewrites it. Know which is which; this is a favourite exam question.
