### Day 17 — Remote state, and building the S3 backend with Terraform

The biggest day of the month. Budget two hours and do it on a weekend.

**Read**

- [State storage and locking](https://developer.hashicorp.com/terraform/language/v1.12.x/state/backends)
- [State locking](https://developer.hashicorp.com/terraform/language/v1.12.x/state/locking)
- [backend block configuration](https://developer.hashicorp.com/terraform/language/v1.12.x/backend)
- [Backend type: local](https://developer.hashicorp.com/terraform/language/v1.12.x/backend/local)
- [Backend type: S3](https://developer.hashicorp.com/terraform/language/backend/s3)
- [AWS provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

**Do** — Build the backend infrastructure itself as code, in two stages.

Stage one, `day-17/bootstrap/`. A configuration with a *local* backend that creates the state storage: an `aws_s3_bucket` with a globally unique name, `aws_s3_bucket_versioning` enabled, `aws_s3_bucket_server_side_encryption_configuration` with AES256, and `aws_s3_bucket_public_access_block` with all four settings true. Output the bucket name. Apply it and commit the resulting `terraform.tfstate` — this one time only, and only because it contains nothing sensitive.

Stage two, `day-17/app/`. Your Docker stack, with a `backend "s3"` block pointing at that bucket, a sensible `key` such as `docker-app/terraform.tfstate`, the region, and `use_lockfile = true`. Run `terraform init`, accept the migration prompt, and watch your local state move to S3. Confirm the object exists, then confirm a second `terraform apply` running concurrently is blocked.

**Push** — Solve the chicken-and-egg problem properly. Add a `backend "s3"` block to the *bootstrap* configuration itself, pointing at the bucket the bootstrap configuration created, with a different key such as `bootstrap/terraform.tfstate`. Run `terraform init -migrate-state`. The bucket now manages the state that describes the bucket. Delete the committed local state file afterwards and explain in `notes/day-17.md` why this is safe and what you would do if the bucket were ever deleted.

**Watch out** — Three things the exam and reality both care about.

- The `backend` block cannot use variables, locals or expressions. Values must be literal. Use partial configuration with `-backend-config=file` or `-backend-config="key=value"` for anything that varies.
- Modern S3 locking is `use_lockfile = true`, which uses S3 conditional writes. The older DynamoDB table approach is deprecated. Know both, because exam material and older blog posts still show DynamoDB.
- State in S3 is encrypted at rest but still contains every attribute in plaintext from Terraform's point of view. Bucket access control is your real security boundary.
