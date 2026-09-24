### Day 46 — Functions at depth, part one: data files drive configuration

**Read**

- [Functions](https://developer.hashicorp.com/terraform/language/functions)
- [Expressions](https://developer.hashicorp.com/terraform/language/expressions)
- [Types and values](https://developer.hashicorp.com/terraform/language/expressions/types)

**Do** — In `day-46/`, write a `buckets.csv` with columns for name, environment and versioning. Read it with `csvdecode`, reshape it with a `for` expression into a map keyed by name, and create every bucket with `for_each`. Then do the same from a YAML file with `yamldecode`, and generate each bucket's policy with `jsonencode` from values in the file.

**Push** — Add a `precondition` that fails with a clear message if any CSV row has an environment outside an allowed set. Bad input data is the usual way a file-driven configuration breaks in production.

**Watch out** — `csvdecode` returns every value as a string. Converting types explicitly, with `tobool` or `tonumber`, is the step people forget.
