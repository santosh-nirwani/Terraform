provider "aws" {
  region     = "us-east-1"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}


resource "aws_instance" "myec2" {
    ami = "ami-051f8a213df8bc089"
    instance_type = var.instancetype
}


output "name" {
  value = aws_instance.myec2.public_ip
}