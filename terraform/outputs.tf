output "vpc_id" {
  description = "ID of the project VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets."
  value       = aws_subnet.private[*].id
}

output "availability_zones" {
  description = "Availability zones used by the project."
  value       = data.aws_availability_zones.available.names
}
output "ecr_repository_url" {
  description = "URL of the ECR repository."
  value       = aws_ecr_repository.app.repository_url
}

output "ecr_repository_arn" {
  description = "ARN of the ECR repository."
  value       = aws_ecr_repository.app.arn
}
output "eks_cluster_role_arn" {
  description = "ARN of the EKS cluster IAM role."
  value       = aws_iam_role.eks_cluster.arn
}

output "eks_node_role_arn" {
  description = "ARN of the EKS node IAM role."
  value       = aws_iam_role.eks_node.arn
}