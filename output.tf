output "instance" {
  value = aws_instance.myexample.public_ip
}

output "rds" {
  value = aws_db_instance.mariadb.endpoint
}

