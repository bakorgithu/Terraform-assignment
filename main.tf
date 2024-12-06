# Defining The EC2 Instances

resource "aws_instance" "test_ec2" {
  ami             = "ami-023ff3d4ab11b2525"
  instance_type   = "t3.micro"
  key_name        = "test_key"
  security_groups = [aws_security_group.allow_ssh.name]
  tags = {
    Name : "Ivo"
  }

}