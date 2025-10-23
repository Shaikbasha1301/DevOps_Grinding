output "myoutput" {
value = [aws_instance.rbserver[0].id, aws_instance.rbserver[1].id ]
}
