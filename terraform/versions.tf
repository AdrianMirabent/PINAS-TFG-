terraform {
  required_version = ">= 1.5"
  required_providers {
    docker = {
      source  = "kreuzweker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}
