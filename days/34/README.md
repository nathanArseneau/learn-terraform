### Day 34 — Reviewing somebody else's plan

The day before, you built a pipeline that posts a plan to a pull request. Today you learn to be the person who reads it. This is the Terraform skill you will use most often and the one no tutorial teaches.

**Read**

- [Command: plan](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/plan) — the output-format section, again, now that you have seen real plans
- [Terraform style guide](https://developer.hashicorp.com/terraform/language/style) — the operations half
- [Enterprise patterns](https://developer.hashicorp.com/terraform/tutorials/recommended-patterns)

**Do** — Generate plans you have to read carefully, in `day-34/`. From an applied stack, make four changes at once: rename a resource, change an attribute that forces replacement, change one that does not, and add a resource that depends on an existing one. Produce a single plan containing all four. Now read it as though a colleague wrote it and answer, without applying:

- [ ] How many resources are created, changed, destroyed and replaced?
- [ ] Which change forces replacement, and what is the line that tells you so?
- [ ] Which resources go down, and for how long, if this applies at 3pm on a Tuesday?
- [ ] What is *not* in this plan that you expected to be? An empty diff where you expected one is the dangerous case.
- [ ] Is anything being destroyed that the author probably did not intend?

**Push** — Write `REVIEW.md` in your repo: a checklist you would ask a colleague to run through before approving a Terraform pull request. Then add it to the PR template so the pipeline from Day 32 and the checklist arrive together. Six to ten items is right; twenty will be ignored.

**Watch out** — Two habits worth forming now. Read the plan summary line last, not first, so the counts confirm your reading instead of replacing it. And treat `-/+` as the symbol that deserves a comment every single time — replacement is where downtime hides, and it is easy to skim past in a hundred-line diff.
