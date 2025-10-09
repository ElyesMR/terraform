# Nom du conteneur
output "container_name" {
  value       = docker_container.nginx.name
  description = "Nom du conteneur Nginx créé"
}

# ID du conteneur
output "container_id" {
  value       = docker_container.nginx.id
  description = "ID du conteneur Nginx"
}

output "nginx_url" {
  value       = "http://localhost:${var.external_port}"
  description = "URL locale d'accès à Nginx"
}
