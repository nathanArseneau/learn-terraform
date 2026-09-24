### Day 36 — Escape hatches and the rest of the CLI

**Read**

- [Provision infrastructure](https://developer.hashicorp.com/terraform/tutorials/provision)
- [Manage resource lifecycle](https://developer.hashicorp.com/terraform/tutorials/state/resource-lifecycle)
- [Target resources](https://developer.hashicorp.com/terraform/tutorials/state/resource-targeting)
- [Terraform CLI overview](https://developer.hashicorp.com/terraform/cli)

**Do** — Work through every `lifecycle` argument on a real resource: `create_before_destroy`, `prevent_destroy`, `ignore_changes` and `replace_triggered_by`. Then use `-target` to apply a single resource and read the warning Terraform prints about it.

**Push** — Add a `local-exec` provisioner that writes the container URL to a file, then delete it and achieve the same thing with a `local_file` resource instead. Write down why the second is better.

**Watch out** — Provisioners are a documented last resort. Know they exist, know `local-exec` from `remote-exec`, know that a failed provisioner marks the resource tainted, and know that the right answer in an interview is almost always "use a provider or bake it into the image".
