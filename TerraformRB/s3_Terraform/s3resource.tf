resource "aws_s3_bucket" "rbbucket" {
bucket=var.rbbucket
}

#versioning
resource "aws_s3_bucket_versioning" "rbversion"{
  bucket= aws_s3_bucket.rbbucket.id
  versioning_configuration {
  status = "Enabled"
}
}

variable "rbbucket"{
type= string
default = "rbbucket.rb1"
}


