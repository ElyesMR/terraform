terraform {
  required_version = ">= 1.3.0"
}


resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello Terraform!"
  }
}
