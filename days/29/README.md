### Day 29 — Custom conditions and checks

**Read**

- [Validate your configuration](https://developer.hashicorp.com/terraform/language/v1.12.x/validate)
- [Validate modules with custom conditions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/custom-conditions)
- [Use checks to validate infrastructure](https://developer.hashicorp.com/terraform/tutorials/configuration-language/checks)

**Do** — Add a `precondition` to your `web-app` module asserting the external port is above 1024, and a `postcondition` asserting the container came up with a non-empty id. Break each deliberately and read the error.

**Push** — Add a `check` block that uses the `http` data source to fetch `http://localhost:{port}/` after apply and asserts a 200 response. Now `terraform plan` tells you not just whether configuration is valid, but whether the thing actually works.

**Watch out** — Four validation mechanisms, four jobs: `variable validation` guards inputs, `precondition` guards assumptions before a resource is built, `postcondition` guards results after, and `check` reports on the running world without failing the apply. The exam wants you to distinguish them.
