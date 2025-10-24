resource "aws_instance" "verginiea"{
  provider= aws.Verginia
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


resource "aws_instance" "mumbai"{
  provider= aws.Mumbai
  tags= {
    Name= var.iname[count.index]
    Client= "tcs"
  }
ami= "ami-06fa3f12191aa3337"
instance_type= var.itype[count.index]
key_name= "RB"
count=var.icount
root_block_device {
  volume_size= 20
}
}

