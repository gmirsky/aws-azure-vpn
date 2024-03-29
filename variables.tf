variable "application_code_name" {
  description = "Application code anme or abbreviation to be used in resource names"
  type        = string
  sensitive   = false
}
#
variable "custom_tags" {
  description = "Custom tags to be included"
  type        = map(string)
  sensitive   = false
}
#
variable "azure_region" {
  description = "Azure Region"
  type        = string
  sensitive   = false
}
#
variable "aws_region" {
  description = "AWS Region"
  type        = string
  sensitive   = false
}
#
variable "environment" {
  description = "Environment value"
  type        = string
  validation {
    condition = can(
      regex(
        "dev|test|qa|prod",
        var.environment
      )
    )
    error_message = "ERROR: environment must be of type: dev, test, qa, prod."
  }
  sensitive = false
}
#
variable "azure_virtual_network_gateway_sku" {
  description = "Azure virtual network gateway skus to provision the vpn"
  type        = string
  validation {
    condition = can(
      regex(
        "Basic|VpnGw1|VpnGw2|VpnGw3|VpnGw4|VpnGw5",
        var.azure_virtual_network_gateway_sku
      )
    )
    error_message = "ERROR: azure_virtual_network_gateway_sku must be: Basic, VpnGw1, VpnGw2, VpnGw3, VpnGw4, VpnGw5."
  }
  sensitive = false
}
#
variable "aws_cidr_block" {
  default     = "192.168.0.0/16"
  description = "AWS CIDR Block for the VPC"
  type        = string
  sensitive   = false
}
#
variable "aws_subnet_cidr_block" {
  default     = "192.168.1.0/24"
  description = "AWS subnet where the virtual machine will reside"
  type        = string
  sensitive   = false
}
#
variable "azure_cidr_block" {
  default     = "10.0.0.0/16"
  description = "Azure CIDR Block"
  type        = string
  sensitive   = false
}
#
variable "azure_subnet_cidr_block_1" {
  default     = "10.0.1.0/24"
  description = "Azure subnet 1"
  type        = string
  sensitive   = false
}
#
variable "azure_subnet_cidr_block_2" {
  default     = "10.0.2.0/24"
  description = "Azure subnet 1"
  type        = string
  sensitive   = false
}
#
variable "aws_os" {
  default     = "amazon-2_lts"
  description = "AWS EC2 instance operating system"
  type        = string
  sensitive   = false
}
#
variable "aws_instance_type" {
  default     = "t2.micro"
  description = "AWS instance type to provision"
  type        = string
  sensitive   = false
}
#
variable "aws_cloudwatch_log_group_name" {
  default     = "aws_azure_vpn"
  description = "AWS Cloudwatch log group name"
  type        = string
  sensitive   = false
}
#
variable "create_test_vms" {
  default     = false
  description = "Create test VMs?"
  type        = bool
  sensitive   = false
}
#
variable "associate_public_ip_address" {
  default     = false
  description = "Associate public IP to the vms and instances?"
  type        = bool
  sensitive   = false
}
#
variable "azure_publisher" {
  description = "Azure publisher value (i.e. Canonical)"
  type        = string
  sensitive   = false
}
#
variable "azure_offer" {
  description = "Azure offer value (i.e. UbuntuServer)"
  type        = string
  sensitive   = false
}
#
variable "azure_sku" {
  description = "Azure sku value (i.e. 18.04-LTS)"
  type        = string
  sensitive   = false
}
#
variable "azure_version" {
  description = "Azure sku version value (i.e. latest)"
  type        = string
  sensitive   = false
}
#
