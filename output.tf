output "printregion" {
  value = var.region
}

output "availability_zone" {
  value = data.aws_availability_zones.available.names[0]
}

output "key_name" {
  value = var.key_name
}

output "jenkins_ip" {
  value = aws_instance.Jenkins_server.public_ip
}


