### Day 56 — Running the AWS configuration from a pipeline

Day 33 built a pipeline around Docker. Today it deploys real AWS infrastructure, with no long-lived credentials anywhere.

**Read**

- [Automate Terraform](https://developer.hashicorp.com/terraform/tutorials/automation)
- [State locking](https://developer.hashicorp.com/terraform/language/state/locking)
- [Command: plan](https://developer.hashicorp.com/terraform/cli/commands/plan) — the `-detailed-exitcode` and `-input` options
- [Command: apply](https://developer.hashicorp.com/terraform/cli/commands/apply) — applying a saved plan

**Do** — Extend the Day 33 workflow to deploy the Day 51 app configuration. Authenticate with OIDC rather than stored keys: in a separate configuration, create an `aws_iam_openid_connect_provider` for GitHub Actions and a role whose trust policy, written with `aws_iam_policy_document`, allows only your repository to assume it. The pipeline plans on pull requests and applies the saved plan on merge, runs with `-input=false`, and sets `TF_IN_AUTOMATION`.

**Push** — Two additions that make a pipeline production-grade. Trigger two runs at once, watch one fail on the state lock, then fix it properly with `-lock-timeout` and a workflow concurrency group. Then add a nightly drift check: `terraform plan -detailed-exitcode`, where exit code 2 means changes are pending and should open an issue.

**Watch out** — Three automation facts the exam can ask directly. `-detailed-exitcode` returns 0 for no changes, 1 for an error and 2 for pending changes. Applying a saved plan fails if the state has changed since the plan was made. And `TF_IN_AUTOMATION` changes Terraform's output, not its behaviour.
