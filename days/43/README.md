### Day 43 — IAM as code

**Read**

- [aws\_iam\_policy\_document data source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)
- [aws\_iam\_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)
- [aws\_iam\_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)
- [aws\_iam\_role\_policy\_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)
- [aws\_iam\_instance\_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile)

**Do** — In `day-43/`, build the identity an EC2 instance will use tomorrow: an S3 bucket, a role EC2 can assume, a policy granting read-only access to that one bucket, the attachment, and an instance profile wrapping the role. Write every policy with `aws_iam_policy_document`, never with inline JSON. Verify with `aws iam get-role` and `aws iam list-attached-role-policies`.

**Push** — Generate the policy's statements from a map of bucket names to permission levels, using a `dynamic "statement"` block. Then write the same policy with `jsonencode` and compare which is easier to review in a plan diff.

**Watch out** — Role, policy, attachment and instance profile are four separate resources that people routinely conflate. Know what each one is for; the exam's resource list names all four.
