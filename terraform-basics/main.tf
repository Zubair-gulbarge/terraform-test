resource "ec2_instance" "webserver" {
  ami = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "finance" {
  bucket = "finance-20192020"
  tags = {
    description = "Finance and Payroll"
  }
}

resource "aws_iam_user" "admin-user" {
  name = "lucy"
  tags = {
    description = "Team Leader"
  }
}