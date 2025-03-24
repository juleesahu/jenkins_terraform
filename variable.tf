variable "region" {
  default = "us-east-1"
}


variable "ami" {
  default = "ami-0f9de6e2d2f067fca"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "jenkins_automation"
}

variable "aws_security_group_name" {
  default = "jenkins SG"
}

variable "ssh_port" {
  type = number
  default = 22
}

variable "jenkins_port" {
  type = number
  default = 8080
}

variable "egress_port" {
  type = number
  default = 0
}