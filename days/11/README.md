### Day 11 — Outputs and locals

**Read**

- [Output data from Terraform](https://developer.hashicorp.com/terraform/tutorials/configuration-language/outputs)
- [Simplify Terraform configuration with locals](https://developer.hashicorp.com/terraform/tutorials/configuration-language/locals)
- [output block reference](https://developer.hashicorp.com/terraform/language/v1.12.x/block/output)

**Do** — In `day-11/`, introduce a `locals` block holding a naming convention such as `local.name_prefix = "${var.project}-${var.environment}"` and use it for every resource name. Add outputs for the container URL and the network ID, and mark one output `sensitive`.

**Push** — Run `terraform output -json` and consume it from a shell script that curls the URL and asserts a 200. That script becomes a smoke test you can reuse on Day 30.

**Watch out** — Locals are evaluated once and cannot be set from outside. Variables are inputs. If you find yourself wanting a local that users override, you want a variable with a default.
