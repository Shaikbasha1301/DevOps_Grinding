resource "aws_security_group" "rbsecugrp"{
name= "rbsecuritygrp"
description= "creating a security group"

ingress {
protocol= "tcp"
from_port= 22
to_port=22
cidr_blocks = ["0.0.0.0/0"]
}

egress {
protocol= "-1"
from_port= 0
to_port=0
cidr_blocks = ["0.0.0.0/0"]
}
}
