terraform {
  required_version = ">= 1.3.0"
}

# Aucune ressource externe : juste un echo local
resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello Terraform!"
  }
}
