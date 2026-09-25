terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.2.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "httpd" {
  name = "httpd:2.4"
}

resource "docker_container" "httpd" {
  name  = "httpd"
  image = docker_image.httpd.image_id
  ports {
    internal = 80
    external = 8000
  }
  volumes {
    container_path = "/usr/local/apache2/htdocs/"
    host_path      = abspath("${path.module}/site")
  }
}
