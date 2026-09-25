# Day 2 — Your first real resources

## Lecture
- [Build infrastructure](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-build)
- [Change infrastructure](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-change)
- [Destroy infrastructure](https://developer.hashicorp.com/terraform/tutorials/docker-get-started/docker-destroy)
- [The core Terraform workflow](https://developer.hashicorp.com/terraform/intro/core-workflow)
- [Docker provider reference](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)

### Terraform block
Terraform settings, included the required provider with a `source` and optional `version`.

### Provider
A plugin that terraform uses to create and manage resources

### Resource
Physical or virtual component such as a Docker container, it can also be a logical resource such as an Heroku application.

### initialize
```bash
terraform init
```

- Download the providers
- Create `.terraform.lock.hcl` specifies the exact provider versions used

### Plan
Git like interface that will show the change that would be applied to your infrastructure.

```bash
terraform plan
```

### Apply
Apply the change to the infrastructure
```bash
terraform apply
```

### Destroy
Will only destroy the resource it tracks; Terraform will sequence the suppression of the resources based on their dependency.

```bash
terraform destroy
```

## Lab
- build an Apache container reachable at `http://localhost:8000`. 
- Use the `httpd:2.4` image, a `docker_image` resource 
- Create a `docker_container` resource whose `ports` block maps internal 80 to external 8000.
- Serve your own content. Add a `volumes` block mounting a local `site/` directory at `/usr/local/apache2/htdocs/`, with an `index.html` you wrote. Apply, edit the HTML, plan again, and confirm Terraform proposes no change. Explain to yourself why not.
