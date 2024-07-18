resource "aws_instance" "webserver" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"

  tags = {
    Name        = "webserver"
    Description = "An Nginx WebServer on Ubuntu"
  }
  user_data              = <<-EOF
                #!/bin/bash
                sudo apt-get update
                sudo apt-get install nginx -y
                systemctl enable nginx
                systemctl start nginx
                EOF
  key_name               = aws_key_pair.web.id
  vpc_security_group_ids = [aws_security_group.ssh-access.id]
}

resource "aws_key_pair" "web" {
  public_key = "terraform-key"
}

resource "aws_security_group" "ssh-access" {
  name        = "ssh-access"
  description = "Allow SSH Access from the Internet"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "publicip" {
  value = aws_instance.webserver.public_ip
}