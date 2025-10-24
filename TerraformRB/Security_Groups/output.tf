output "myoutput" {
value = [aws_instance.myinstance[1].public_ip, aws_instance.myinstance[0].private_ip]
}
