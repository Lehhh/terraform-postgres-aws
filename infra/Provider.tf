provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "soat7-lshiniti-postgres-rds-state"
}

data "aws_eks_cluster" "eks" {
  name = var.cluster_name
}

data "aws_vpc" "eks_vpc" {
  id = data.aws_eks_cluster.eks.vpc_config[0].vpc_id
}

data "aws_subnets" "eks_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.eks_vpc.id]
  }
}
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = data.aws_subnets.eks_subnets.ids
}