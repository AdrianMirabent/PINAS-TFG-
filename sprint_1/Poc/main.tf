# Bloque de configuración general de Terraform
terraform {
	required_providers {
		docker = {
			source = "kreuzwerker/docker"
			version = "~> 3.0"
		}
	}
}

# Bloque del proveedor 
provider "docker" {}

# Bloque de recurso. Creación de una imagen de Docker
resource "docker_image" "nginx" {
	name = "nginx:alpine"
}

# Bloque de recurso. Creación de una red de Docker
resource "docker_network" "honeynet" {
	name = "honeynet"
	driver = "bridge"
	ipam_config {
		subnet = "172.30.0.0/24"
	}
}

# Bloque de recurso. Creación del contenedor de Docker
resource "docker_container" "web_senuelo" {
	name = "web-senuelo"
	image = docker_image.nginx.image_id
	networks_advanced {
		name = docker_network.honeynet.name
	}
}
