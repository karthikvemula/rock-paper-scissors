terraform {
  required_providers {
    artifactory = {
      source = "jfrog/artifactory"
      version = "2.23.0"
    }
  }
}

provider "artifactory" {
  url = "https://jfrogaks123.jfrog.io"
  username = "karthikvemula189@gmail.com"
  password = "Githubaction@123"
  # Configuration options
}
