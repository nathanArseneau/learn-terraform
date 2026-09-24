### Day 47 — Functions at depth, part two: reshaping data

**Read**

- [Functions](https://developer.hashicorp.com/terraform/language/functions) — the collection and IP network sections
- [Type constraints](https://developer.hashicorp.com/terraform/language/expressions/type-constraints)

**Do** — Given a map of security groups to lists of allowed ports, produce one ingress rule per group-and-port pair using a nested `for` expression and `flatten`, keyed so `for_each` stays stable. Then carve a /16 into eight /24s with `cidrsubnet`. Do each in `terraform console` before you put it in configuration.

**Push** — Solve the same group-and-port problem a second way with `setproduct`, and a third with `zipmap` where it fits. Then spend twenty minutes on `try`, `can`, `one`, `alltrue`, `anytrue` and `regex`, writing a one-line example of each.

**Watch out** — The multiple-choice section includes fill-in-the-blank questions where spelling counts. Being able to type `cidrsubnet("10.0.0.0/16", 8, 2)` and know its result without looking is the level to aim for.
