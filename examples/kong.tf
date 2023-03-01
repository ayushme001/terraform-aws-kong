module "kong" {
  source          = "git::https://github.com/ayushme001/terraform-aws-kong?ref=kong"
  eks_cluster_name = module.eks_cluster.cluster_id
  kong_release_name = "kong"
  konga_release_name = "konga"
  rds_endpoint = module.create_database.endpoint
  rds_username = module.create_database.username
  rds_password = module.create_database.password
  rds_port = module.create_database.port
  subnet_ids = data.aws_subnets.private.ids
}