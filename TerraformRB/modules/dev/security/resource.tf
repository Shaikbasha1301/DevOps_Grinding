resource "aws_security_group" "mysec" {
name= var.isecu
description= "this is tf"

ingress {
protocol= "-1"
from_port= 0
to_port= 0
cidr_blocks = ["0.0.0.0/0"]
}

egress {
protocol= "-1"
from_port= 0
to_port= 0
cidr_blocks = ["0.0.0.0/0"]
}

}
