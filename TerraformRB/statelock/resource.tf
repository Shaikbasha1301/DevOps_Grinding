resource  "aws_instance" "rbinstance" {
tags= {
Name= "ssrbserver"
}
instance_type= "c7i-flex.large"
ami= "ami-0bdd88bd06d16ba03"
}

