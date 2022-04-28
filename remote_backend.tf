terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TompTest"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
