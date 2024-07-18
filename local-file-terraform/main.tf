# resource "random_string" "server-suffix" {
#   length  = 5
#   upper   = false
#   special = false
# }

# resource "aws_instance" "web" {
#   ami           = "ami-0b72821e2f351e396"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "web-${random_string.server-suffix.result}"
#   }
# }