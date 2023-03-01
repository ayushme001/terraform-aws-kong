module "kong" {
  source          = "../"
  eks_cluster_name = "nw-social"
  kong_release_name = "kong"
  konga_release_name = "konga"
  rds_endpoint = "kong-database.cluster-c8m4uwvxecdh.ap-south-1.rds.amazonaws.com"
  rds_username = "root"
  rds_password = "password"
  rds_port = "5432"
  subnet_ids = ["subnet-0257e8262a7017948", "subnet-062a9cb5ea10455da", "subnet-06b6a7e3c22de35ca"]
}