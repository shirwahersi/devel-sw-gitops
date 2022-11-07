module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "instance-gitops1"

  ami                    = "ami-0ee415e1b8b71305f"
  instance_type          = "t2.micro"
  subnet_id              = data.terraform_remote_state.vpc.outputs.private_subnets[0]
}
