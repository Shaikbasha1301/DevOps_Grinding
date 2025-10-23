resource "aws_instance" "rbserver" {
  tags= {
    Name= var.iname
  }
  ami= var.iami
  instance_type= var.itype
  count= var.icount
  root_block_device {
    volume_size = var.isize
  }
}


