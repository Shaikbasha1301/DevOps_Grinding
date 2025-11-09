resource "aws_vpc" "rbvpc" {
tags= {
Name= "rbvpcrb"
}
cidr_block = "10.0.0.0/16"
instance_tenancy= "default"
enable_dns_hostnames ="true"
}


resource  "aws_subnet" "rbsubnet" {
tags= {
Name= "rbsubnet"
}
vpc_id= aws_vpc.rbvpc.id
availability_zone= "us-east-1a"
cidr_block= "10.0.0.0/16"
map_public_ip_on_launch= "true"
}


resource "aws_internet_gateway" "rbgateway" {
tags={
Name= "rbigw"
}
vpc_id= aws_vpc.rbvpc.id
}


resource "aws_route_table" "rbroute" {
tags= {
Name= "rbroute"
}
vpc_id = aws_vpc.rbvpc.id
route {
cidr_block = "0.0.0.0/0"
gateway_id =aws_internet_gateway.rbgateway.id
}
}


resource "aws_route_table_association" "myrtass"{
route_table_id =aws_route_table.rbroute.id
subnet_id= aws_subnet.rbsubnet.id

}










