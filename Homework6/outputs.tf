output "aws_public_ip" {
  value = module.aws_grafana.aws_instance_public_ip
}
#output "azure_public_ip" {
#  value = module.azure_grafana.public_ip
#}