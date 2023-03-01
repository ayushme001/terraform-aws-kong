output "product_vpc" {
  value = data.aws_eks_cluster.example
}

output "data_arn" {
  value = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/${trimprefix(data.aws_eks_cluster.example.identity[0].oidc[0].issuer, "https://")}"
}