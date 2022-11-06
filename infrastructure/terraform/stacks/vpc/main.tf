module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.16.0"

  name                = local.resource_name_prefix
  cidr                = var.vpc["cidr"]
  azs                 = local.azs
  private_subnets     = var.vpc["private_subnets"]
  public_subnets      = var.vpc["public_subnets"]
  database_subnets    = var.vpc["database_subnets"]
  elasticache_subnets = var.vpc["elasticache_subnets"]

  enable_nat_gateway = true
  single_nat_gateway = true

  private_subnet_tags = {
    "kubernetes.io/cluster/${local.resource_name_prefix}-eks" = "shared"
    "kubernetes.io/role/internal-elb"                         = "1"
  }

  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }

}
