### Day 7 — Consolidate: a stack with moving parts

**Read**

- [Define input variables](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-variables)
- [Query data with outputs](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-outputs)
- [Purpose of Terraform state](https://developer.hashicorp.com/terraform/language/v1.12.x/state/purpose)
- [docker\_network resource](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/network)

**Do** — In `day-07/`, with no tutorial open, build a three-part stack: a `docker_network`, an Apache container on port 8000 attached to it, and a `docker_volume` for its document root. Add a variable for the external port and an output for the full URL. Then run `terraform state list` and `terraform state show` on each resource.

**Push** — Run `terraform graph | dot -Tsvg > graph.svg` and open it. Identify the provider node, the resource nodes and the edges. Then open `terraform.tfstate` in an editor and find `serial`, `lineage`, and the `dependencies` array on one resource.

**Watch out** — Reread your Day 1 note. You should now be able to name three jobs state does: mapping configuration to real objects, caching attributes so plans are fast, and tracking dependencies so destroy happens in the right order.
