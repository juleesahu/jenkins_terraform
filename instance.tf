resource "aws_instance" "Jenkins_server" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_default_subnet.default_az1.id
  vpc_security_group_ids = [aws_security_group.allow_SG.id]
  key_name = var.key_name 
}

