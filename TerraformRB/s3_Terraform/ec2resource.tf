resource "aws_instance" "rbinstance" {
tags= {
Name= "rbec2"
}
instance_type= "t3.micro"
ami="ami-0bdd88bd06d16ba03"
}
