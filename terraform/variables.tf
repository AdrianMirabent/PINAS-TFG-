variable "ip_escucha" {
  description = "IP de la VM en la red de pruebas. Los puertos publicados escuchan solo aquí."
  type        = string
  default     = "10.10.10.10"
}

variable "puerto_web" {
  description = "Puerto del host para la trampa web"
  type        = number
  default     = 8080
}
