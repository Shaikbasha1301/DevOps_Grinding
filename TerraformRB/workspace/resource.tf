resource "aws_instance" "myinstance" {
  tags = {
    Name = "${terraform.workspace}-server"
  }
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = local.instance_types[terraform.workspace]
  key_name      = "NewKey"
  root_block_device {
    volume_size = 20
  }
}
