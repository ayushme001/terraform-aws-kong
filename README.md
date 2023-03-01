# terraform-aws-template

[![Lint Status](https://github.com/tothenew/terraform-aws-template/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-template/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-template)](https://github.com/tothenew/terraform-aws-template/blob/master/LICENSE)

This is a template to use for baseline. The default actions will provide updates for section bitween Requirements and Outputs.

The following content needed to be created and managed:
 - Introduction
     - Explaination of module 
     - Intended users
 - Resource created and managed by this module
 - Example Usages

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.17 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | 1.15.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.72 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.17 |
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.kong](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.konga](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_config_map.kong-config](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_pod.kong_migration](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/pod) | resource |
| [postgresql_database.kong](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.15.0/docs/resources/database) | resource |
| [postgresql_database.konga](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.15.0/docs/resources/database) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_cluster.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the EKS cluster | `string` | `""` | no |
| <a name="input_kong_release_name"></a> [kong\_release\_name](#input\_kong\_release\_name) | Release name of Kong Application | `string` | `"kong"` | no |
| <a name="input_konga_release_name"></a> [konga\_release\_name](#input\_konga\_release\_name) | Release name of Konga Application | `string` | `"konga"` | no |
| <a name="input_rds_endpoint"></a> [rds\_endpoint](#input\_rds\_endpoint) | Endpoint of RDS  DB or Cluster | `string` | `"localhost"` | no |
| <a name="input_rds_password"></a> [rds\_password](#input\_rds\_password) | Password of RDS  DB or Cluster | `string` | `"postgres"` | no |
| <a name="input_rds_port"></a> [rds\_port](#input\_rds\_port) | Port of RDS  DB or Cluster | `string` | `"5432"` | no |
| <a name="input_rds_username"></a> [rds\_username](#input\_rds\_username) | Username of RDS  DB or Cluster | `string` | `"postgres"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The VPC Subnet IDs to launch in | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data_arn"></a> [data\_arn](#output\_data\_arn) | n/a |
| <a name="output_product_vpc"></a> [product\_vpc](#output\_product\_vpc) | n/a |