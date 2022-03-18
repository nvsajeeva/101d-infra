terraform {
  backend "s3" {
    bucket  = "101d-iac"
    key     = "terraform/maxweather/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    profile = "101d"
  }
}
