resource "docker_network" "honeynet" {
  name   = "honeynet"
  driver = "bridge"
  ipam_config {
    subnet = var.subred_honeynet
  }
}

resource "docker_image" "nginx" {
  name = "nginx:alpine"
}


resource "docker_container" "web" {
  name  = "senuelo-web"
  image = docker_image.nginx.image_id

  networks_advanced {
    name = docker_network.honeynet.name
  }


  ports {
    internal = 80
    external = var.puerto_web
    ip       = var.ip_escucha
  }
}



