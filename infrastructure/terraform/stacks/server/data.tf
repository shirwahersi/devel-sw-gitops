data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "shirwa-shopworks-dev-tfstate"
    key    = "devel/vpc-stack-terraform.tfstate"
    region = var.region
  }
}
