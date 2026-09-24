### Day 38 — Review and sample questions

**Read**

- [Associate exam content list (004)](https://developer.hashicorp.com/terraform/tutorials/certification-004/associate-review-004) — the authoritative objective list
- [Associate learning path (004)](https://developer.hashicorp.com/terraform/tutorials/certification-004/associate-study-004)
- [Associate sample questions (004)](https://developer.hashicorp.com/terraform/tutorials/certification-004/associate-questions-004)

**Do** — Work the sample questions cold, then go back to the objective table below and mark every row green, amber or red. Spend the rest of the day only on the reds.

**Push** — Write the gotcha list below out from memory, then check yourself against it. Anything you cannot reproduce is a red.

### The gotcha list

| Trap | The answer |
| --- | --- |
| `validate` versus `plan` | `validate` needs no credentials and touches no API |
| `init` versus `init -upgrade` | Only `-upgrade` re-resolves constraints and rewrites the lock file |
| `~> 3.0` versus `~> 3.0.1` | The first allows any 3.x, the second only 3.0.x |
| Variable precedence | `-var` and `-var-file` share the top tier (last on the command line wins), then `*.auto.tfvars`, then `terraform.tfvars`, then `TF_VAR_` environment variables, then the default |
| `count` versus `for_each` | Position versus key; removing a middle element renumbers under `count` |
| `state rm` versus `destroy` | `state rm` forgets, `destroy` deletes |
| Backend block contents | No variables, no locals, no expressions — use partial configuration |
| S3 state locking | `use_lockfile = true`; the DynamoDB table is deprecated |
| `sensitive = true` | Redacts CLI output only; state is still plaintext |
| `moved` versus `removed` | `moved` re-addresses in state; `removed` drops from state without destroying |
| `import` block versus command | The block is reviewable configuration; the command is imperative |
| `cloud` versus `backend` | Mutually exclusive; you configure one or the other |
| Module version pinning | Registry modules use `version`; Git modules use `?ref=`; local modules have neither |
| Default vs aliased provider | The default is inherited by child modules automatically; an aliased one must be passed with providers = {} |
| -replace vs taint | apply -replace= supersedes taint; taint still appears in older material |
| force-unlock | Clears a stuck lock only; safe solely when no operation is genuinely running |
| terraform\_remote\_state | Reads the whole state of another configuration, not just its outputs |
| State format direction | Treat upgrades as one-way: downgrading within 1.x may work but is not guaranteed, and there is no supported revert |
| -target | Skips the dependency graph, so state can end up inconsistent; justify it rather than avoid it |
| State boundaries | One big state means slow plans and wide blast radius; many small ones move the cost into the wiring between them |
