terraform {
backend "s3" {
bucket = "rbb.bucket33.rb"
key= "prod/terraform.tfstate"
region= "us-east-1"
use_lockfile= true
}
}
