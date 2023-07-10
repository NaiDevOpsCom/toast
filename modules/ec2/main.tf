resource "aws_instance" "alvo-toast" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  
  subnet_id = var.subnet
  //This is interpolation or directive
  key_name = "${aws_key_pair.deployer.key_name}"

  user_data = data.template_file.user_data.rendered

  # 	user_data = <<EOF
	# 	#! /bin/bash
  #   sudo apt-get update
	# 	sudo apt install nginx
	# 	sudo systemctl start nginx
	# 	sudo systemctl enable nginx
	# EOF

  # vpc_security_group_ids = [aws_security_group.alvo-toast.id]
  vpc_security_group_ids = [var.security_group]


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
  template = file("${path.module}/install_nginx.sh")

}


