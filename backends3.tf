terraform {
  backend "s3" {
    bucket = "terra-vprofile-state002"
    key    = "terraform/backend"
    region = "us-east-2"
  }
}