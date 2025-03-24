resource "null_resource" "name" {
  
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("e:/Terraform/pem.key/jenkins_automation.pem")
    host = aws_instance.Jenkins_server.public_ip
    
  }

  provisioner "file" {
    source = "./jenkins.sh"
    destination = "/tmp/jenkins.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/jenkins.sh",
      "set -e",  # Exit on any error
      "sudo /tmp/jenkins.sh"
      
    ]
  }

  depends_on = [ aws_instance.Jenkins_server ]
}

