terraform {
  backend "s3" {
    bucket         = "rsschool-devops-tfstate-kottarainen"
    key            = "state/devops-course.tfstate"
    region         = var.region
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
