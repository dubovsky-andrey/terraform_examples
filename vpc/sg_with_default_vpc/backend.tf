terraform {
  backend "s3" {
    bucket       = "dubovsky-andrey-terraform-stage-bucket"
    key          = "vpc/sg_with_default_vpc/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}