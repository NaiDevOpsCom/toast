resource "aws_instance" "alvo-toast" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  
  subnet_id = var.subnet
  //This is interpolation or directive
  key_name = "${aws_key_pair.deployer.key_name}"

  user_data = data.template_file.user_data.rendered

  # 	user_data = <<-EOF
	# 	#!/bin/bash
  #   sudo apt-get update
	# 	sudo apt install nginx
	# 	sudo systemctl start nginx
	# 	sudo systemctl enable nginx
	# EOF

  vpc_security_group_ids = [aws_security_group.alvo-toast.id]
  # vpc_security_group_ids = var.security_gp_id


  tags = {
	Name = "alvin-toast"
  }
}




resource "aws_key_pair" "deployer" {
  key_name = "deployer-key"
  //storing ssh key on the server
  public_key = tls_private_key.RSA.public_key_openssh
}


resource "tls_private_key" "RSA" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "local_file" "alvo-ssh-keys" {
	# content = tls_private_key.RSA.private_key_pem
	content = tls_private_key.RSA.private_key_pem
	filename = "alvo-ssh-keys.pem"
}


data "template_file" "user_data" {
  template = "install_nginx.sh"
}


resource "aws_security_group" "alvo-toast" {
  name        = "alvo-toast"
  description = "my security group"
 
  vpc_id      = var.vpc_id

  ingress = [ 
    {
      description      = "HTTP"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      prefix_list_ids  = []
      security_groups  = []
      self             = false
      ipv6_cidr_blocks = []

  },
  {
      description      = "SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      //The /32 means use a single ip
      cidr_blocks      = ["105.163.1.218/32"] //Please change to your own IP address for this to work
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
  }
  ]

  egress = [
    {
      description      = "outgoing traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      security_groups  = []
      self             = false

  }
  ]

  tags = {
    Name = "allow_toast_tls"
  }

}

