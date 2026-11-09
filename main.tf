
# Define Terraform and required Docker provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Configure Docker provider
provider "docker" {}

# Pull the Nginx Docker image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

# Create Docker container
resource "docker_container" "nginx_container" {
  name  = "task3-terraform-container"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8081
  }
}
