### Day 2 — Your first real resources

**Read**

- [Build infrastructure](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-build)
- [Change infrastructure](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-change)
- [Destroy infrastructure](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-destroy)
- [The core Terraform workflow](https://developer.hashicorp.com/terraform/intro/v1.12.x/core-workflow)
- [Docker provider reference](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)

**Do** — In `day-02/`, build an Apache container reachable at `http://localhost:8000`. Use the `httpd:2.4` image, a `docker_image` resource and a `docker_container` resource whose `ports` block maps internal 80 to external 8000. Run init, plan, apply, hit the URL, then destroy. Type it out rather than copying the nginx tutorial.

**Push** — Serve your own content. Add a `volumes` block mounting a local `site/` directory at `/usr/local/apache2/htdocs/`, with an `index.html` you wrote. Apply, edit the HTML, plan again, and confirm Terraform proposes no change. Explain to yourself why not.

**Watch out** — Changing `ports` forces replacement; editing a mounted file does not, because the file is not part of the resource. Learning which attribute changes force replacement is most of what reading plans fluently means.
