### Day 41 — Orientation and exam conditions

**Read**

- [Advanced exam orientation](https://developer.hashicorp.com/terraform/tutorials/pro-cert/adv-orientation)
- [Advanced learning path](https://developer.hashicorp.com/terraform/tutorials/pro-cert/adv-study)
- [Advanced exam content list](https://developer.hashicorp.com/terraform/tutorials/pro-cert/adv-review)
- [Advanced exam update](https://developer.hashicorp.com/terraform/tutorials/pro-cert/adv-update)
- [Exam practice labs](https://developer.hashicorp.com/terraform/tutorials/pro-cert/adv-practice-landing)

**Do** — Build your exam environment. A plain Linux shell (a VM, WSL, or a container you define with the Docker provider — Part 1 still pays off), Terraform, the AWS CLI, and a browser with exactly two bookmarks: the [Terraform documentation](https://developer.hashicorp.com/terraform/language) and the [AWS provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs). Work in it for the rest of Part 2. Then read the content list and mark each objective against what you did in Part 1.

**Push** — Write `notes/advanced-rules.md`: your own exam-conditions rules. No tutorials open, no copying from `tf-learning`, a timer running, and every task ends with an AWS CLI check that the resource really has the setting you intended.

**Watch out** — Part 1 made you strong on state, refactoring and validation, which are the harder language objectives. Your weakness going in is AWS fluency. Expect Days 42 to 45 to feel slower than anything in Part 1.

**Two practical checks before you book** — both from the official orientation, and both easy to miss.

- **Keyboard layout.** The exam requires a US English QWERTY layout. If you normally type on a Canadian French or other layout, switch your lab environment to US QWERTY from Day 41, so brackets, quotes and pipes are in muscle memory by exam day. Four hours of hunting for `{` is a real handicap.
- **Terraform version.** Check which Terraform version the exam environment runs before your mock labs. At least one HashiCorp page lists an older version than this plan uses, and it may be out of date — but if the exam runs an older release, features such as ephemeral values and write-only arguments will not be available there. Do Days 57 to 59 on whatever version the exam uses.
