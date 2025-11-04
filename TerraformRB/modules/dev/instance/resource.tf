resource "aws_instance" "rbinstance" {
tags= {
Name= var.iname }
instance_type= var.itype
ami= var.iami
}
