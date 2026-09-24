### Day 20 — Using modules

**Read**

- [Modules overview](https://developer.hashicorp.com/terraform/tutorials/modules/module)
- [Use registry modules in configuration](https://developer.hashicorp.com/terraform/tutorials/modules/module-use)
- [Find and use modules](https://developer.hashicorp.com/terraform/registry/modules/use)
- [module block reference](https://developer.hashicorp.com/terraform/language/v1.12.x/block/module)
- [Module version argument](https://developer.hashicorp.com/terraform/language/v1.12.x/block/module#version)

**Do** — In `day-20/`, use the community `terraform-aws-modules/vpc/aws` module from the registry to build a small VPC with two public subnets. Pin the version. Run `terraform init`, then look inside `.terraform/modules/` to see what was actually downloaded. Destroy when finished.

**Push** — Read the module's source on GitHub and find the input variable you set. Trace it through to the resource it configures. Understanding that a module is just a directory of `.tf` files is the whole trick.

**Also do — decide whether you would trust it.** Using a registry module is easy; judging one is the skill you will need in your first week on a real team. Before you commit to the VPC module above, work through this on its registry page and its repository, and record your verdict in `notes/day-20.md`:

- [ ] **Maintenance.** When was the last release? Are issues answered, or open for two years? Is there more than one maintainer?
- [ ] **Ownership.** Is it published by the provider's vendor, a known consultancy, or an individual? `terraform-aws-modules` is community-run, not HashiCorp — know the difference.
- [ ] **Size and scope.** How many resources does it manage, and how many inputs does it take? A module with 200 inputs has no opinion, and a module with no opinion is just a more confusing way to write the resources yourself.
- [ ] **Blast radius.** What happens to your infrastructure if a future version changes a resource name? Read the changelog for past breaking changes.
- [ ] **The exit.** Could you fork or vendor it if it were abandoned tomorrow? A module you could not walk away from is a dependency you should not take.

Then do the same for one module you would reject, and write down why. Knowing what bad looks like is the half people skip.

**Watch out** — Registry modules are versioned and you should always pin. Git-sourced modules take a `?ref=` query, and local `./` modules take no version at all because they move with your repo.
