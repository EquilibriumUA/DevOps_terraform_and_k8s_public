resource "aws_eks_cluster" "main" {
  name     = "${var.project_name}-${var.environment}"
  role_arn = aws_iam_role.eks_cluster.arn
  version  = var.eks_version

  upgrade_policy {
    support_type = "STANDARD"
  }

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  vpc_config {
    subnet_ids = aws_subnet.private[*].id
  }

  tags = {
    Name = "${var.project_name}-${var.environment}-eks"
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]
}