### Day 25 — Remote state as a data source

**Read**

- [Query data sources](https://developer.hashicorp.com/terraform/tutorials/configuration-language/data-sources) — the remote state half, which you skipped on Day 8
- [State storage and locking](https://developer.hashicorp.com/terraform/language/v1.12.x/state/backends)
- [Module composition](https://developer.hashicorp.com/terraform/language/v1.12.x/modules/develop/composition)

**Do** — Split your work into two configurations that share the Day 17 bucket under different keys. `day-25/network/` creates the Docker network and outputs its name and id. `day-25/app/` reads those with a `terraform_remote_state` data source and attaches containers to the network it did not create. Apply the network first, then the app, then destroy in reverse.

**Push** — Break it on purpose. Destroy the network configuration while the app configuration still depends on it, and see what Terraform does and does not protect you from. Then rewrite the app side to take the network name as a plain input variable instead, and write down in `notes/day-25.md` which coupling you would choose at work and why.

**Watch out** — `terraform_remote_state` reads the *entire* state of the other configuration, including values never intended as outputs. The tighter, safer alternative is publishing to a parameter store or passing explicit inputs. Know the mechanism; be deliberate about using it.
