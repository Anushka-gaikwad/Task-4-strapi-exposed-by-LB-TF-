variable "env" {
  default = ap-south-1
}

variable "vpc_cidr" {
  default = 10.0.0.0/16
}

variable "public_subnet_cidr" {
  default = 10.0.0.7/24
}

variable "private_subnet_cidr" {
  default = 10.0.0.8/24
}
