resource "aws_db_instance" "postgres" {
  allocated_storage = 5
  engine  = "postgres"
  engine_version = "12.18"
  instance_class = var.instance_type
  username = var.db_user
  password = var.db_password
  port = var.db_port
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  skip_final_snapshot = true
}