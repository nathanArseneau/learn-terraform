### Day 6 — Format, validate, debug

**Read**

- [Troubleshoot Terraform](https://developer.hashicorp.com/terraform/tutorials/configuration-language/troubleshooting-workflow)
- [Command: fmt](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/fmt)
- [Command: validate](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/validate)
- [Debugging Terraform](https://developer.hashicorp.com/terraform/internals/v1.12.x/debugging)

**Do** — Break a working config four ways: a syntax error, a reference to a nonexistent resource, a type mismatch, and a missing required argument. For each, predict whether `validate` or `plan` catches it, then check. Mangle the whitespace and fix it with `terraform fmt -recursive`.

**Push** — Add a Git pre-commit hook running `terraform fmt -check -recursive` and `terraform validate` that refuses the commit on failure. Then set `TF_LOG=DEBUG TF_LOG_PATH=./tf.log` on an apply and find the provider's actual API calls in the log.

**Watch out** — `terraform validate` contacts no provider API and needs no credentials. It checks syntax, types and references only. `plan` is what talks to the real world. Several exam questions hinge on exactly this.
