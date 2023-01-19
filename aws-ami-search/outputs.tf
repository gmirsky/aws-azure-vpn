output "ami_id" {
  description = "The AMI ID result of the search"
  value       = data.aws_ami.search.id
  sensitive   = false
}
#
output "root_device_name" {
  description = "The device name of the root device"
  value       = data.aws_ami.search.root_device_name
  sensitive   = false
}
#
output "owner_id" {
  description = "The owner id of the selected AMI"
  value       = data.aws_ami.search.owner_id
  sensitive   = false
}
#