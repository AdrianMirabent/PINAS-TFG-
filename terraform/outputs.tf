output "url_web" {
  description = "Dirección de la trampa web en la red de pruebas"
  value       = " https://${var.ip_escucha}:${var.puerto_web} "
}
