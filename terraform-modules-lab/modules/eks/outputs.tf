
output "cluster_endpoint" {
  description = "The address of ip servece"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "The name of cluster"
  value       = aws_eks_cluster.main.name
}