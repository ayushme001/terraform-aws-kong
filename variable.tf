variable "eks_cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
  default     = ""
}

variable "kong_release_name" {
  type        = string
  description = "Release name of Kong Application"
  default     = "kong"
}

variable "konga_release_name" {
  type        = string
  description = "Release name of Konga Application"
  default     = "konga"
}

variable "rds_endpoint" {
  type        = string
  description = "Endpoint of RDS  DB or Cluster"
  default     = "localhost"
}

variable "rds_username" {
  type        = string
  description = "Username of RDS  DB or Cluster"
  default     = "postgres"
}

variable "rds_password" {
  type        = string
  description = "Password of RDS  DB or Cluster"
  default     = "postgres"
}

variable "rds_port" {
  type        = string
  description = "Port of RDS  DB or Cluster"
  default     = "5432"
}

variable "subnet_ids" {
  description = "The VPC Subnet IDs to launch in"
  type        = list(string)
}