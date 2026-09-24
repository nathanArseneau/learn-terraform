### Day 8 — Resources and data sources

**Read**

- [Define infrastructure with Terraform resources](https://developer.hashicorp.com/terraform/tutorials/configuration-language/resource)
- [Query data sources](https://developer.hashicorp.com/terraform/tutorials/configuration-language/data-sources)
- [Resources](https://developer.hashicorp.com/terraform/language/v1.12.x/resources)
- [Data sources](https://developer.hashicorp.com/terraform/language/v1.12.x/data-sources)
- [resource block reference](https://developer.hashicorp.com/terraform/language/resources/syntax)

**Do** — In `day-08/`, use the `docker_registry_image` data source to look up `httpd:2.4` and feed its digest into a `docker_image` resource via `pull_triggers`. Contrast this with the plain `docker_image` resource you used in Week 1. Run `plan` twice and confirm the second is empty.

**Push** — Pin the container to the image digest rather than the tag. You cannot push to the official image, so simulate an upstream change instead: point the data source at a tag that moves, such as `httpd:latest`, or run a local `registry:2` container with the Docker provider and push two different builds to the same tag. Then confirm `terraform plan` detects the new digest. This is how you get reproducible container deploys.

**Watch out** — A data source is read during plan and creates nothing. A resource is created, updated and destroyed by Terraform. The exam will hand you a scenario and ask which you need.
