module "kong" {
  source          = "git::https://github.com/ayushme001/terraform-aws-kong?ref=kong"
  eks_cluster_name = module.eks_cluster.cluster_id
  kong_release_name = "kong"
  konga_release_name = "konga"
  rds_endpoint = "kong-database.cluster-c8m4uwvxecdh.ap-south-1.rds.amazonaws.com"
  rds_username = "root"
  rds_password = "qZzyzrOX6S0ShTGXfak7bB9kkpvvBx1pAr"
  rds_port = "5432"
#   rds_endpoint = module.create_database.endpoint
#   rds_username = module.create_database.username
#   rds_password = module.create_database.password
#   rds_port = module.create_database.port
  subnet_ids = ["subnet-0257e8262a7017948", "subnet-062a9cb5ea10455da", "subnet-06b6a7e3c22de35ca"]
}