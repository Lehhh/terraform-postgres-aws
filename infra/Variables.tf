variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default     = "eks-cluster"
}

variable "db_name" {
  default = "tech"
}

variable "db_user" {
  default = "postgres"
}

variable "db_password" {
  default = "Postgres123"
  sensitive = true
}

variable "db_port" {
  default = 5432
}

variable "instance_type" {
  default = "db.t3.micro"
}
