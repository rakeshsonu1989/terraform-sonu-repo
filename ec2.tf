provider "aws" {
  region = "ap-south-1"

}

resource "aws_instance" "ec2" {

  ami           = "ami-008b85aa3ff5c1b02"
  instance_type = local.instance
  name          = "developer-instance"
  tags = {
    name = "hello world-sonu"
  }
}
locals {
  instance = "t2.small"
}

# resource "aws_s3_bucket" "example" {
#   bucket = "smg-jnnce-sonu-2019"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

output "my-ec2" {
  value = aws_instance.ec2.id
}