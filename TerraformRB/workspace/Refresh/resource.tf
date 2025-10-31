resource "aws_instance" "rbinstance" {
  tags = {
    Name = "rehanserver"
  }
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t3.micro"
  key_name      = "NewKey"
  root_block_device {
    volume_size = 20
  }
  count=3
}
