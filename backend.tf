// atore the terraform state file in s3 and lock woth dynamodb
terraform {
  backend "s3" {
    bucket         = "deepeprah-terraform-remote-tatefile"
    key            = "teraform-ecs/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "Terraform-state-lock"

  }
}