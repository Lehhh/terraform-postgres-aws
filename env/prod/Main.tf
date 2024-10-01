module "prod" {
  source = "../../infra"
  subnet_ids = ["subnet-014bf5e059bd42f0d", "subnet-0225e85c19be002a5"]
  vpc_id = "vpc-07264825a5cac98a9"
}