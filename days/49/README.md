### Day 49 — Destroy options, S3 objects and `random`

**Read**

- [Command: destroy](https://developer.hashicorp.com/terraform/cli/commands/destroy)
- [Command: plan](https://developer.hashicorp.com/terraform/cli/commands/plan) — the `-destroy` planning mode
- [aws\_s3\_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
- [aws\_s3\_object](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object)
- [random\_integer](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer)

**Do** — In `day-49/`, create a bucket with a name suffix from `random_integer`, and upload three objects with `aws_s3_object`, one from a local file and two from inline content. Now upload a fourth object with the AWS CLI, outside Terraform, and try to destroy. Read the failure, fix it with `force_destroy`, and destroy again. Then preview a destroy with `terraform plan -destroy` and a partial one with `terraform destroy -target`.

**Push** — Use `keepers` on the `random_integer` to force a new suffix — and therefore a new bucket — only when a chosen input changes. Then remove one object from state with `state rm`, destroy the configuration, and confirm with the AWS CLI that the orphaned object survived.

**Watch out** — `force_destroy` deletes every object in the bucket, including ones Terraform never created. It is right for a lab and dangerous on a bucket that holds anything you care about.
