### Day 57 — Mock lab 1 (two hours, timed)

Close everything except the Terraform and AWS provider documentation. Start a two-hour timer. Work in a new directory, `mock-1/`.

**The scenario** — A team is handing you a half-finished platform. Complete these tasks in any order:

- [ ] Configure an S3 backend with locking, using a bucket you create in a separate bootstrap configuration.
- [ ] Using only data sources, find the default VPC, its subnets, and the latest Amazon Linux AMI. No hardcoded ids anywhere.
- [ ] Create an IAM role and instance profile allowing read access to one bucket, with every policy written as `aws_iam_policy_document`.
- [ ] Create a launch template and an autoscaling group of two instances behind a security group allowing port 80, using `aws_vpc_security_group_ingress_rule`.
- [ ] Drive the security group's allowed ports from a variable of type `map(list(number))`, with validation rejecting any port below 80.
- [ ] Refactor the IAM resources into a local module without destroying them.
- [ ] Output the autoscaling group's name and the role's ARN.

**Grade yourself the way the exam does** — three checks, not one. Is the configuration valid and formatted? Does `terraform state list` show exactly what you expect? And does the AWS CLI confirm the real settings — instances healthy, the rule on port 80, the policy attached? A clean `plan` alone is not a pass.

**Then** — Write down every point where you reached for the docs, and what you searched for. Those searches are your revision list for Day 58.
