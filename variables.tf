variable "TFC_AWS_KEY_ID" {
  type = string
  default = ""
}

variable "TFC_AWS_KEY_ACCESS" {
  type = string
  default = ""
}


variable "sqs_name" {
  description = "Name of the sqs queue to be created"
  default = "my-first-sqs"
}