locals {
  context = "../../.."
}

variable "docker_container_name" {
  description = "Name of the container"
  type        = string
  default     = "learn-docker-container-development"
}

variable "docker_image_dockerfile_context" {
  description = "The name of the Dockerfile"
  type        = string
  default     = "../../.."
}

variable "docker_image_dockerfile_name" {
  description = "The name of the Dockerfile"
  type        = string
  default     = "Dockerfile.development"
}

variable "docker_image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "learn-docker-container-development:latest"
}

variable "external_port" {
  description = "External port of the local machine"
  type        = number
  default     = 3000
}

variable "internal_port" {
  description = "Internal port of the container"
  type        = number
  default     = 3000
}
