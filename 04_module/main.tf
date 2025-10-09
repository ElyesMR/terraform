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


module "nginx_1" {
  source        = "./modules/nginx"
  name          = "nginx-m1"
  external_port = 8084
}

module "nginx_2" {
  source        = "./modules/nginx"
  name          = "nginx-m2"
  external_port = 8085
}

output "urls" {
  value = {
    m1 = "http://localhost:8084"
    m2 = "http://localhost:8085"
  }
}
