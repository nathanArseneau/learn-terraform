### Day 21 — Writing your own module

**Read**

- [Build and use a local module](https://developer.hashicorp.com/terraform/tutorials/modules/module-create)
- [Module composition](https://developer.hashicorp.com/terraform/language/v1.12.x/modules/develop/composition)
- [Manage values in modules](https://developer.hashicorp.com/terraform/language/v1.12.x/values)

**Do** — In `day-21/`, extract your Docker web stack into `modules/web-app/` with `main.tf`, `variables.tf`, `outputs.tf` and `versions.tf`. Inputs: image, tag, external port, network id, and a map of environment variables. Outputs: container id and URL. Call it twice from the root module with different ports and confirm both containers come up. Do it as a refactor, not a rewrite: apply the flat version first, then extract the module and add a moved block from docker\_container.web to module.web\_a.docker\_container.this (adjusted to your names). The plan must show a move, not a destroy-and-create — this is the moved block you will write most often at work.

**Push** — Make it look like a module someone else would trust. Add a `README.md` with a usage example, an `examples/basic/` directory that actually applies, `validation` blocks on the inputs, and a `description` on every variable and output. Generate the input and output tables with [terraform-docs](https://github.com/terraform-docs/terraform-docs).

**Watch out** — A child module does not inherit the root module's variables. Everything crosses the boundary explicitly through inputs and outputs. Variable scope inside modules is an explicit exam objective.
