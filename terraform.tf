terraform {
  backend "s3" {
    bucket     = "otaku-dev-terraform"
    key        = "terraform.tfstate"
  }
}

