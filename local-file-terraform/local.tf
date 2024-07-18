terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "1.4.0"
    }
  }
}

resource "local_file" "pet" {
  filename = "${path.module}/pet.txt"
  content  = "We Love Pets!"
}

# resource "aws_instance" "first-ec2-instance" {
#   ami           = "ami-0b72821e2f351e396"
#   instance_type = "t2.micro"
# }