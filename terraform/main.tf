resource "docker_image" "nginx" {
  name = "nginx:alpine"
}


resource "docker_container" "web" {
  name  = "senuelo-web"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.puerto_web
    ip       = var.ip_escucha
  }
}



