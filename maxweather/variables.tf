variable "aws_region" {
  default = "us-east-1"
}

variable "cluster-name" {
  default = "101d-eks-cluster"
  type    = string
}
variable "keypair_name" {
  description = "KeyPair Name"
  default     = "101d-keypair"
}