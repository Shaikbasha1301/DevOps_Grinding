terraform {
backend "s3" {
bucket= "rbbucket.rb1"
key= "rb/terraform.tfstae"
region= "us-east-1"
}
}

