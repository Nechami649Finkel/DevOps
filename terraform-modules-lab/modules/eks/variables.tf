
variable "cluster_name" {
  description = "The name of eks"
  type = string
}

variable "subnet_ids" {
  description = "The list of network module"
  type = list(string)
}