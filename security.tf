resource "aws_security_group" "allow_SG" {
  name = var.aws_security_group_name 

  ingress {
    from_port   = var.ssh_port 
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  
}
  ingress {
    from_port   = var.jenkins_port
    to_port     = var.jenkins_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  
}

  egress {
    from_port   = var.egress_port 
    to_port     = var.egress_port 
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}