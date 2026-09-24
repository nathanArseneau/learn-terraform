# Day 1 — What infrastructure as code actually buys you

## Lecture
- [What is infrastructure as code with Terraform?](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/infrastructure-as-code)
- [What is Terraform?](https://developer.hashicorp.com/terraform/intro)
- [Terraform Use Cases](https://developer.hashicorp.com/terraform/intro/v1.12.x/use-cases)
- [Infrastructure as code in a private or public cloud](https://www.hashicorp.com/blog/infrastructure-as-code-in-a-private-or-public-cloud)
- [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/install-cli)

### Explain what IaC is
Infrastructure as Code (IaC) is the practice of defining and managing infrastructure (servers, networks, databases, etc.) through machine-readable configuration files instead of manual setup via consoles or ad-hoc commands. These files are often declarative, describing the desired end state, and tools like Terraform, CloudFormation, or Pulumi make the real infrastructure match it. Because the infrastructure is defined as code, it can be version-controlled, reviewed, reused, and shared like any other code. This makes provisioning safe, consistent, and repeatable, reduces configuration drift, and allows infrastructure changes to be automated through CI/CD pipelines.

### Describe the advantages of IaC patterns
- versioned and reviewable change
- Reproducible and standardized environments
- declared desired state that makes drift detectable.
- Automated changes

### Explain how Terraform manages multi-cloud, hybrid cloud, and service-agnostic workflows
Terraform lets you use the same workflow to manage multiple providers and handle cross-cloud dependencies. This simplifies management and orchestration for large-scale, multi-cloud infrastructures.

## Lab
- Install Terraform and Docker and confirm both work.

### Question
#### What problem does a state file solve that a shell script of `docker run` commands does not? 
A docker run script only knows how to create containers; it has no record of what already exists, so re-running it causes conflicts and it can't update or remove anything. A state file records which real resources (by ID) correspond to each item in the config, so the tool can compare desired vs. actual, change only what's different, and delete what I removed.

## A bit deeper
- Work through [Verify Terraform binary archives](https://developer.hashicorp.com/terraform/tutorials/cli/verify-archive). Download HashiCorp's PGP key, verify the checksum file's signature, then verify your binary against it.
