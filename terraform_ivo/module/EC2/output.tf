output "ip" {
    value = aws_instance.test_ec2.public_ip
  
}

output "id" {
    value = aws_instance.test_ec2.id
  
}