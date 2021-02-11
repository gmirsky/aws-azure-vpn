variable "aws_vpc_id" {
  description = "AWS VPC ID to deploy the EC2 instances into"
  type        = string
}

variable "aws_instance_type_id" {
  default     = "t2.micro"
  description = "AWS instance type to provision"
  type        = string
}

variable "azure_user_tags" {
  description = "Azure User Tags to be applied to resources"
  type        = map(string)
}

variable "aws_user_tags" {
  description = "AWS User Tags to be applied to resources"
  type        = map(string)
}

variable "aws_key_name" {
  description = "AWS key name"
  type        = string
}

variable "aws_subnet_id" {
  description = "AWS subnet id to deploy the EC2 instance into"
  type        = string
}

variable "aws_ami" {
  description = "AWS AMI"
  type        = string
}

variable "associate_public_ip_address" {
  default     = true
  description = "Associate public IP to the vms and instances?"
  type        = bool
}

variable "azure_location" {
  description = "Azure Region"
  type        = string
}

variable "azure_resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "azure_subnet_id" {
  description = "Azure subnet to provision the VM into"
  type        = string
}

variable "azure_public_key_openssh" {
  description = "Public key for the Azure vm"
  type        = string
}

variable "azure_publisher" {
  description = "Azure publisher value (i.e. Canonical)"
  type        = string
}

variable "azure_offer" {
  description = "Azure offer value (i.e. UbuntuServer)"
  type        = string
}

variable "azure_sku" {
  description = "Azure sku value (i.e. 18.04-LTS)"
  type        = string
}

variable "azure_version" {
  description = "Azure sku version value (i.e. latest)"
  type        = string
}
