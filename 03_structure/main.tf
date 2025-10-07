terraform {
  required_version = ">= 1.3.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = "nginx-struct"         # <-- différent de l'exo 2
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.external_port
  }
}
