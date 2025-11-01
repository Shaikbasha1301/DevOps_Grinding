resource "aws_instance" "myinstance" {
tags={
Name= "rbserver"
}
instance_type= "t3.micro"
ami= "ami-0bdd88bd06d16ba03"
provisioner "local-exec" {
command= "echo 'execute the instance id:${aws_instance.myinstance.id}' >> instanceid.txt"
}
}

