### Days 39 and 40 — Capstone

Two days, not one. No tutorials, no copying from earlier days. Day 39 builds it; Day 40 breaks it, fixes it and documents it. Everything goes in `capstone/`.

**Day 39 — build**

- [ ] An S3 backend with versioning, encryption and `use_lockfile`, created by its own bootstrap configuration
- [ ] A reusable local module that provisions one containerised web service: image, network, volume, ports, environment
- [ ] A root configuration calling the module three times from a `map(object(...))`, with `for_each`
- [ ] A `templatefile`-generated landing page per service naming the service and its port
- [ ] Preconditions on the module inputs and a `check` block confirming each service returns 200
- [ ] Outputs exposing every URL, and one sensitive output
- [ ] A `.tftest.hcl` covering both plan-time and apply-time behaviour
- [ ] A CI workflow running fmt, validate, test and plan
- [ ] A README someone else could follow

**Day 40 — break it, then hand it over**

- [ ] Add a second provider and an aliased configuration, so the capstone spans Docker and AWS
- [ ] Split it into two configurations wired by `terraform_remote_state`
- [ ] Delete the state object from S3 and recover it from a prior version
- [ ] Force a stuck lock and clear it, following your own Day 26 runbook
- [ ] Force-replace one resource with `-replace` and confirm nothing else moved
- [ ] Bump every provider a major version and get back to a clean plan
- [ ] Destroy everything, then rebuild it from an empty state in one apply

When it applies cleanly from an empty state, destroys cleanly, and passes its own tests, you are ready. Book the exam.

**Push** — Hand the repository to someone who does not know Terraform and watch them try to run it. Every question they ask is a gap in your README or your variable descriptions.
