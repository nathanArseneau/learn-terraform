### Day 27 — Volume and blast radius

Everything you have built so far has been three to six resources. Nothing in the plan so far has taught you what Terraform feels like when it is big, because small configurations hide every problem that matters at work. Today you make one deliberately too big, live with it, and then fix it.

Budget two hours, or split it across two sittings at the marked break.

**Read**

- [Target resources](https://developer.hashicorp.com/terraform/tutorials/state/resource-targeting)
- [Refactor monolithic Terraform configuration](https://developer.hashicorp.com/terraform/tutorials/modules/organize-configuration)
- [Refactor Terraform state](https://developer.hashicorp.com/terraform/language/v1.12.x/state/refactor)
- [Command: state](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/state)

**Do, part one — make it big.** In `day-27/`, build roughly 150 resources in a single state file using `for_each` over a generated map. Pick things that are free and fast: `aws_ssm_parameter` is ideal, or Route 53 records in a throwaway zone. Mix in your Docker stack and a few S3 buckets so the state is not homogeneous. Then measure, and write the numbers in `notes/day-27.md`:

- [ ] How long does `terraform plan` take with an empty diff? Time it.
- [ ] How many lines is the plan output when you change one attribute on one resource? Can you find that change by eye?
- [ ] How large is the state file on disk?
- [ ] Run `plan -refresh=false` and compare. Now you know what the refresh actually costs.
- [ ] Run `plan -parallelism=1` and compare again. Now you have felt the dependency graph.

**Do, part two — use `-target` in anger.** You need to change one SSM parameter and you do not want to wait three minutes or risk the other 149. Apply it with `-target`, and read the warning Terraform prints. Then answer honestly: was using it here a smell, or was it the correct tool? Write your answer down. The point is that `-target` stops being a thing you avoid and starts being a thing you justify.

*Break here if you are splitting the day.*

**Do, part three — draw the boundary wrong, then fix it.** Your 150 resources span unrelated concerns: parameters, DNS, containers, buckets. One state file means every plan refreshes all of them and every apply risks all of them. That is the blast radius, and you are now living inside it.

Split it into three configurations along concern lines, using `terraform state mv -state-out=` rather than destroying and rebuilding. Keep day-27/ on local state for this, because -state-out only works with the local backend; on a remote backend the equivalent is state pull to a file, the move between local files, then state push. Then measure again:

- [ ] Plan time per configuration versus the monolith
- [ ] Plan output length for the same one-attribute change
- [ ] What can now go wrong in one configuration without touching the other two

**Push** — Answer in `notes/day-27.md`, in your own words: what is the rule you will use to decide where a state boundary goes? Write it as something you could say out loud in a design review. Then stress-test your own rule against three cases — a shared VPC everything depends on, a per-team application, and a set of resources that change on completely different schedules. A rule that survives all three is worth keeping.

**Watch out** — Both directions have a cost, and the instinct you want is for the trade-off rather than for one answer. One large state means slow plans and wide blast radius. Many small states mean fast plans, narrow blast radius, and a new problem: the wiring between them, which is what Day 25 was about. Splitting state does not remove coupling; it makes the coupling explicit and therefore reviewable.

**Destroy everything at the end of this day.** 150 resources left running is exactly the kind of thing that turns a free-tier account into a bill.
