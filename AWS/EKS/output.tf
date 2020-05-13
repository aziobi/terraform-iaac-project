output "ARN" {
  value = module.my-cluster.cluster_arn
}
output "ID" {
  value = module.my-cluster.cluster_id

}

output "REGION" {
  value = var.region
}

output "NAME" {
  value = var.cluster_name
}


output "Sec_group" {
  value = module.my-cluster.cluster_security_group_id
}