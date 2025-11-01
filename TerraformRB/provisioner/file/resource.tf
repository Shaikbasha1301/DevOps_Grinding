resource "aws_key_pair" "srbkeypair" {
  key_name   = "srbkey"
  public_key = file("/root/.ssh/id_rsa.pub")

}

resource "aws_instance" "srbinstance" {
  tags = {
    Name = "srbserver"
  }
  ami                    = "ami-0bdd88bd06d16ba03"
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.srbkeypair.key_name
  vpc_security_group_ids = [aws_security_group.srbsecugrp.id]
  provisioner "file" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("/root/.ssh/id_rsa")
    }
    source      = "./secugrp.tf"
    destination = "secugrp.tf"
  }
}

