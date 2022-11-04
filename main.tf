terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.3.3"
}


provider "aws" {
  region  = "sa-east-1"
  profile = "aws-cli-terraform"
}



resource "aws_sqs_queue" "my_first_sqs" {
  name = var.sqs_name


tags = {
    Name = "gerraform-study"
}

}

resource "aws_sqs_queue_policy" "my_sqs_policy" {
  
  queue_url = aws_sqs_queue.my_first_sqs.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.my_first_sqs.arn}"
    }
  ]
}
POLICY


}
