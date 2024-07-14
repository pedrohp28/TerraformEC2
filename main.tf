terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03d5c68bab01f3496"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  //user_data = "${file("inits.sh")}"
  user_data_replace_on_change = true
  vpc_security_group_ids = ["sg-07402920b456a4665"]

  tags = {
    Name = "Teste AWS"
  }
}