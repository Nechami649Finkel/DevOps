
# 1. פה אנחנו מושכים את ה-Endpoint של הקלאסטר מהמודול של ה-eks
output "cluster_endpoint" {
  description = "The endpoint for your EKS cluster"
  value       = module.eks.cluster_endpoint
}

# 2. פה אנחנו מושכים את השם של הקלאסטר
output "cluster_name" {
  description = "The name of your EKS cluster"
  value       = module.eks.cluster_name
}

# 3. אפשר גם למשוך נתונים מהרשת אם צריך
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.network.vpc_id
}