### Day 26 — When things go wrong

The day that pays for itself the first time production misbehaves.

**Read**

- [Command: state](https://developer.hashicorp.com/terraform/cli/v1.12.x/commands/state)
- [Manage resource drift](https://developer.hashicorp.com/terraform/tutorials/state/resource-drift)
- [Backend type: S3](https://developer.hashicorp.com/terraform/language/backend/s3) — the versioning and recovery notes
- [Manage resource lifecycle](https://developer.hashicorp.com/terraform/tutorials/state/resource-lifecycle)

**Do** — Four failures, in `day-26/`, each recovered deliberately.

1. **A resource is fine to Terraform but broken in reality.** Force its recreation with `terraform apply -replace=docker_container.web`. Note that this replaced the old `terraform taint`, which you will still see referenced in exam material and blog posts.
2. **A lock is stuck.** Interrupt an apply mid-run, or leave a lock file behind, then clear it with `terraform force-unlock <LOCK_ID>`. Read the warning it prints and understand exactly when ignoring that warning corrupts state.
3. **State is lost.** Delete the state object from S3, then restore it from a previous object version — the reason Day 17 turned versioning on. Confirm a plan comes back empty afterwards.
4. **State is wrong.** Hand-edit a pulled state file to a wrong value, `terraform state push` it, watch the plan go haywire, then repair it with `state rm` plus `import` rather than more hand-editing.

**Push** — Write `notes/day-26.md` as a short runbook: symptom, diagnosis, command, and the check that confirms recovery. This is the single most portable artefact of the whole month — take it to your next job.

**Watch out** — `force-unlock` is safe only when you are certain no operation is genuinely running. `state push` has no undo. Both belong in a runbook with a second pair of eyes attached, not in muscle memory.
