# tfstate file backend using s3 bucket

resource "aws_s3_bucket" "backend_bucket" {
  bucket = "statefile-backend-bucket"

  tags = {
    Name = "statefile-backend-bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning_configuration" {
  bucket = aws_s3_bucket.backend_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.backend_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# statelock mechanism using dynamodb table

resource "aws_dynamodb_table" "statefile_dynamodb_table" {
  name         = "statefile-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    Name = "statefile-table"
  }
}