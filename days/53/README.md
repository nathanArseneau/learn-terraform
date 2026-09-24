### Day 53 — Import under exam conditions

**Read**

- [Import blocks](https://developer.hashicorp.com/terraform/language/import)
- [moved blocks](https://developer.hashicorp.com/terraform/language/moved)
- [State](https://developer.hashicorp.com/terraform/language/state)

**Do** — Work through HashiCorp's official [import block practice lab for AWS](https://developer.hashicorp.com/terraform/tutorials/pro-cert/adv-import-block-AWS), timed.

**Push** — The second sanctioned exception to the no-clicking rule: create an EC2 instance, security group and bucket by hand with the AWS CLI, then bring all three under management with `import` blocks and `-generate-config-out`. Clean the generated configuration until the plan is empty, then refactor it into a module with `moved` blocks. That chain — import, clean, refactor — is a plausible lab scenario on its own.
