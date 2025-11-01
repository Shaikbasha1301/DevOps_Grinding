resource "aws_instance" "rbinstance"{
tags= {
Name= "rbserver"
}
ami= "ami-0bdd88bd06d16ba03"
instance_type= "t3.micro"
key_name= aws_key_pair.rbkeypair.key_name
vpc_security_group_ids= [aws_security_group.rbsecugrp.id]
provisioner "remote-exec" {
  connection {
    type= "ssh"
    user= "ec2-user"
    host= self.public_ip
    private_key= file("/root/.ssh/id_rsa")
  }
  inline= [
    "echo remoteserver",
    "sudo yum install httpd -y",
    "sudo systemctl start httpd",
    "sudo systemctl enable httpd",
    "sudo yum install git -y " ]
}
}

resource "aws_key_pair" "rbkeypair" {
  key_name= "rbkey"
  public_key= file("/root/.ssh/id_rsa.pub")

}
