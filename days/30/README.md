### Day 30 — Testing

**Read**

- [Write Terraform tests](https://developer.hashicorp.com/terraform/tutorials/configuration-language/test)
- [Tests](https://developer.hashicorp.com/terraform/language/tests)

**Do** — Write `tests/web_app.tftest.hcl` for your module. Include one `run` block with `command = plan` asserting the container name is derived correctly, and one with `command = apply` asserting the container actually responds. Run `terraform test`.

**Push** — Add a `mock_provider` block so the plan-only tests run with no Docker daemon at all, then wire `terraform test` into the pre-commit hook from Day 6.

**Watch out** — Tests are not on the 004 exam. They are on every serious team's checklist. This is one of the days where going beyond the syllabus pays the most.
