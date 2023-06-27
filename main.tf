terraform {
  cloud {
    organization = "og1-jyp"

    workspaces {
      name = "ws-1"
    }
  }


  // 자바의 import 와 비슷함
  // aws 라이브러리 불러옴
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}