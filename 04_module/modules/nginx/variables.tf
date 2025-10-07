variable "name" {
  type = string
}

variable "image" {
  type    = string
  default = "nginx:latest"
}

variable "external_port" {
  type = number
}
