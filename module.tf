module "azure_user_tags" {
  custom_tags = var.custom_tags
  environment = var.environment
  source      = "./azure_user_tags"
}
#
module "aws_user_tags" {
  custom_tags = var.custom_tags
  environment = var.environment
  source      = "./aws_user_tags"
}
#
module "azure_region" {
  azure_region = var.azure_region
  source       = "./azure_region"
}
#
module "aws-ami-search" {
  os     = var.aws_os
  source = "./aws-ami-search"
}
#
module "create_test_vms" {
  associate_public_ip_address = var.associate_public_ip_address
  aws_ami                     = module.aws-ami-search.ami_id
  aws_instance_type_id        = var.aws_instance_type
  aws_key_name                = module.key-pair.this_key_pair_key_name
  aws_subnet_id               = aws_subnet.subnet_1.id
  aws_user_tags               = module.aws_user_tags.tags
  aws_vpc_id                  = aws_vpc.vpc.id
  azure_location              = module.azure_region.location
  azure_offer                 = var.azure_offer
  azure_public_key_openssh    = tls_private_key.this.public_key_openssh
  azure_publisher             = var.azure_publisher
  azure_resource_group_name   = azurerm_resource_group.resource_group.name
  azure_sku                   = var.azure_sku
  azure_subnet_id             = azurerm_subnet.subnet_1.id
  azure_user_tags             = module.azure_user_tags.tags
  azure_version               = var.azure_version
  count                       = var.create_test_vms == true ? 1 : 0
  source                      = "./create_test_vms"
}
#
module "key-pair" {
  key_name   = "${var.application_code_name}-1"
  public_key = tls_private_key.this.public_key_openssh
  source     = "terraform-aws-modules/key-pair/aws"
  tags       = module.aws_user_tags.tags
  version    = "0.6.0"
}
#