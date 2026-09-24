### Day 55 — Troubleshooting AWS provider errors

Part 1 taught you to read Terraform's own errors. AWS errors are a different animal: many appear only at apply, and the message often names a symptom rather than the cause.

**Read**

- [Debugging Terraform](https://developer.hashicorp.com/terraform/internals/debugging)
- [Dependency lock file](https://developer.hashicorp.com/terraform/language/files/dependency-lock)
- [Provider requirements](https://developer.hashicorp.com/terraform/language/providers/requirements)

**Do** — In `day-55/`, cause five errors on purpose. For each, write down the message, predict the cause before looking anything up, then confirm with `TF_LOG=DEBUG`.

1. **Permissions.** Assume the Day 42 role with a policy that lacks `ec2:RunInstances`, and try to launch an instance. Decode the encoded failure message with `aws sts decode-authorization-message` to see exactly which action was denied.
2. **Valid plan, failed apply.** Hardcode an AMI id from a different region. Note that `plan` succeeds and `apply` fails — the plan never asked AWS whether the AMI exists.
3. **Dependency violation.** Try to destroy a security group, with `-target`, while an instance still uses it. Read the `DependencyViolation` error and explain why Terraform's graph did not prevent it.
4. **Version conflict.** Make a child module require AWS provider `~> 4.0` while the root requires `~> 5.0`, and read the `init` failure.
5. **Lock file mismatch.** Edit one hash in `.terraform.lock.hcl` and read what `init` says about it.

**Push** — Extend your Day 26 runbook with a section for provider errors: message, likely cause, the command that proves it, and the fix. Add every AWS error you hit during Days 42 to 53 that you did not cause on purpose — those are the valuable ones.

**Watch out** — Know which class of error each command can catch. `validate` catches syntax and types; `plan` catches most references and some provider-side validation; permission problems, capacity limits and invalid ids from other regions usually surface only at `apply`.
