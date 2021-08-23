terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  
  required_version = ">=0.14.9"
}

provider "aws" {
  profile = "default"
  region = "us-east-2"
}

resource "aws_instance" "app_server" {

  ami= "ami-09f6591a16da2bdfa"
  instance_type = "t2.micro"
  tags= {
    Name = "Nagesh_Terraform"
}
}
