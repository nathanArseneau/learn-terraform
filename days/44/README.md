### Day 44 — EC2 with data sources

Day 2 of Part 1 put Apache on port 8000 in a container. Today the same web server runs on a real instance.

**Read**

- [aws\_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)
- [aws\_ami data source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami)
- [aws\_subnet data source](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet)
- [aws\_security\_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
- [aws\_security\_group\_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)
- [aws\_vpc\_security\_group\_ingress\_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule)

**Do** — In `day-44/`, launch a `t3.micro` in a default-VPC subnet found with the `aws_subnet` data source, using the latest Amazon Linux AMI found with the `aws_ami` data source — never a hardcoded AMI id. Install Apache with `user_data`, open port 80 with a security group, and attach the Day 43 instance profile. Output the public URL and curl it. Then SSH in — or use Session Manager, after attaching the AWS-managed AmazonSSMManagedInstanceCore policy to the role — to confirm the instance can read the Day 43 bucket and nothing else.

**Push** — Write the ingress rule first as an `aws_security_group_rule`, then migrate it to `aws_vpc_security_group_ingress_rule` without the security group being replaced, using a `removed` block for the old rule and an `import` block for the new one. Confirm with the plan before you apply.

**Watch out** — Never mix inline `ingress` blocks and standalone rule resources on the same security group. The two fight over the rule set and produce a diff on every plan. The exam lists both rule styles precisely because you need to know which to use and why.
