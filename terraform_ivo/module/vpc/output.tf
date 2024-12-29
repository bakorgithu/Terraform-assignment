##

output "vpcid" {
  value = aws_vpc.vpc.id
}

output "publicsubnet" {
  value = aws_subnet.public-subnet.id
}

output "privatesubnet" {
  value = aws_subnet.private-subnet.id
}