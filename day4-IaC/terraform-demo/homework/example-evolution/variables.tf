variable "aws_region" {
  default = "us-east-2"
}

variable "path_to_private_key" {
  default = "/home/pattopilco/bootcamp"
}

variable "path_to_public_key" {
  default = "/home/pattopilco/bootcamp.pub"
}

variable "amis" {
  type = map(string)
  default = {
    us-east-2 = "ami-0d406e26e5ad4de53"
  }
}