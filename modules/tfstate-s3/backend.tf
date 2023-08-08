terraform {
  backend "s3" {
    bucket = "tfstate-test-bucket12"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    access_key = "AKIAYFMASLDCMAWBZQPJ"
    secret_key = "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"
    dynamodb_table = "terraform_state"
    /* encrypt = true */
  }
}