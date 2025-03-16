terraform {
  required_version = ">= 1.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "learn_docker_image_development" {
  name = var.docker_image_name
  build {
    context    = var.docker_image_dockerfile_context
    dockerfile = var.docker_image_dockerfile_name
  }
}

resource "docker_container" "lear_docker_container_development" {
  name  = var.docker_container_name
  image = docker_image.learn_docker_image_development.name
  ports {
    internal = var.internal_port
    external = var.external_port
  }
  restart = "unless-stopped"

  volumes {
    container_path = "/app"
    host_path      = "${abspath(path.module)}/../../.."
  }
}
