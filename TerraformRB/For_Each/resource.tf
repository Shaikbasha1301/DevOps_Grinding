resource "aws_instance" "myinstance"{
  tags= {
    Name= var.iname[count.index]
    Client= "tcs"
  }
ami= "ami-0341d95f75f311023" 
instance_type= var.itype[count.index]
key_name= "Masterkey"
count=var.icount
root_block_device {
  volume_size= 20
}
}

