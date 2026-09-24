### Day 14 — Expressions, functions and dynamic blocks

**Read**

- [Create dynamic expressions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/expressions)
- [Perform dynamic operations with functions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/functions)
- [Built-in functions](https://developer.hashicorp.com/terraform/language/v1.12.x/functions)
- [Develop configuration with the console](https://developer.hashicorp.com/terraform/tutorials/cli/console)

**Do** — Spend twenty minutes in `terraform console` alone, trying `for` expressions, splat expressions, conditionals, `merge`, `lookup`, `try`, `coalesce`, `join`, `toset` and `flatten`. Then use `templatefile` to generate an `index.html` per service, naming the service and its port, and mount it into each container.

**Push** — Use a `dynamic "ports"` block so a service can declare several port mappings in its map entry. Dynamic blocks are the thing people reach for too early; learn them, then use them sparingly.

**Watch out** — `terraform console` is the fastest way to answer your own questions about an expression, and it works against real state. Use it far more than you think you need to.
