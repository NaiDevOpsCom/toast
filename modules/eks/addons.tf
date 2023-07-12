resource "aws_eks_addon" "toast-addon" {
  cluster_name = aws_eks_cluster.example.name
  addon_name   = "vpc-cni"
}