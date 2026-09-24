### Day 45 — Launch templates and autoscaling groups

**Read**

- [aws\_launch\_template](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template)
- [aws\_autoscaling\_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group)
- [Resources and meta-arguments](https://developer.hashicorp.com/terraform/language/resources)

**Do** — In `day-45/`, turn Day 44's single instance into a launch template and an autoscaling group of two, spread across every default-VPC subnet returned by a data source. Verify with `aws autoscaling describe-auto-scaling-groups` that both instances are healthy and in different availability zones.

**Push** — Change the `user_data` in the launch template and roll it out with an `instance_refresh` block rather than by replacing the group. Then decide how to handle `desired_capacity` if an external scaling policy changes it — `ignore_changes` is the usual answer, and you should be able to say why.

**Watch out** — Referencing the launch template as `$Latest` versus a pinned `latest_version` behaves differently when the template changes. Know which one triggers an update to the group, and which one silently does not.
