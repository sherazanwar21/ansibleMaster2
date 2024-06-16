provider "aws" {
    region = "us-east-2"
    shared_credentials_files = [ "~/.aws/credentials" ]
}

terraform {
  backend "s3" {
    bucket = "my-projects-xlarge"
    key = "statefiles/terraform.tfstate"
    region = "us-east-2"
  }
}