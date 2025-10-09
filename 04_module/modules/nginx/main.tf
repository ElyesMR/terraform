resource "docker_image" "this" {
  name         = var.image
  keep_locally = false
}

resource "docker_container" "this" {
  name  = var.name
  image = docker_image.this.image_id

  ports {
    internal = 80
    external = var.external_port
  }
}
