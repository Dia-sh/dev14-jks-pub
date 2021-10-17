terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.34.0,<=3.35.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  #shared_credentials_file = "/var/lib/jenkins/.aws/credentials"
  profile = "default"
}

resource "aws_instance" "my-first-ec2" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t3.micro"
  tags = {
    Name  = "myec2-1"
    Owner = "Shodiya"
  }
}
