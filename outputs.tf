output "done" {
  value = var.done
}

output "ec2_public_ip" {
  value = ["ssh -i terraform-frankfurt.pem ubuntu@${aws_instance.terra_instance.public_ip}"]
}