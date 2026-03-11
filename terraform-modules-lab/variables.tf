
variable "cluster_name" {
  description = "The name for the EKS cluster"
  type        = string
  default     = "my-awesome-cluster"
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-1"
}