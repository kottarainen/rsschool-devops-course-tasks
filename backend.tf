terraform {
  backend "s3" {
    bucket         = "rsschool-devops-tfstate-kottarainen"
    key            = "state/devops-course.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
