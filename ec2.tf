# data "aws_ami" "my_ami" {
#      most_recent      = true
#      #name_regex       = "^mavrick"
#      owners           = ["721834156908"]
# }


resource "aws_instance" "web-1" {
  ami                         = var.imagename
  availability_zone           = "us-east-1a"
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.subnet-1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = var.environment
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx
		sudo systemctl start nginx
		sudo systemctl enable nginx
		echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.nginx-debian.html
	EOF
}