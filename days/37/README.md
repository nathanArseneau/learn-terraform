## 🔁 Day 37 — Recall 3: everything, cold

The third spaced-repetition day, and the one that tells you whether you are ready. Nothing open, nothing looked up until you have written an answer down.

**Retrieve (45 minutes)** — In `notes/recall-3.md`:

- [ ] From Week 1: what `init`, `validate`, `plan`, `apply`, `fmt` and `destroy` each do, in one line each
- [ ] From Week 2: when you reach for `for_each`, and what `templatefile` is for
- [ ] From Week 3: the full sequence to move a configuration from local state to S3, including what `init` prompts you for
- [ ] From Week 4: how an aliased provider reaches a child module, and what `terraform_remote_state` exposes
- [ ] From Week 5: the four validation mechanisms and which of them can fail an apply
- [ ] From Week 5: what `sensitive = true` protects and what it does not
- [ ] Every command in your Day 26 runbook, from the symptom rather than the command

**Rebuild (45 minutes)** — Write, from scratch and from memory, a complete small module: `variables.tf` with validation, `main.tf` with `for_each` and a precondition, `outputs.tf`, and `versions.tf` with pinned constraints. Do not apply it. Then open Day 21 and diff.

**Watch out** — Anything you could not retrieve here is what you revise on Day 38. Anything you retrieved easily needs no further attention, however uncomfortable that feels.
