variable "vpc_name" {
  default = ""
}
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "var.VPC_NAME"
  cidr = "var.VpcCIDR"
  azs = [var.Zone1, var.Zone2, var.Zone3]
  private_subnets = [var.PrivSub1CIDR, var.PrivSub2CIDR, var.PrivSub2CIDR]
  public_subnets = [var.PubSub1CIDR, var.PubSub2CIDR, var.PubSub3CIDR]
  single_nat_gateway = true
  enable_nat_gateway = true
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    terraform ="true"
    enviorment ="prod"
  }

  vpc_tags = {
    name =var.vpc_name
      }
  }