terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.18.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "app_server1" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleApp"
  }
}
