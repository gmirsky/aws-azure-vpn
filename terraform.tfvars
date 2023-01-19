custom_tags = {
  budget-code       = "AWS-00-0001"
  category          = "infrastructure"
  primary_contact   = "someone.else@somedomain.com"
  project           = "AWS to Azure VPN"
  secondary_contact = "nobody.notme@somedomain.com"
}
application_code_name             = "aws-azure-vpn"
associate_public_ip_address       = true
aws_cidr_block                    = "192.168.0.0/16"
aws_cloudwatch_log_group_name     = "aws_azure_vpn"
aws_instance_type                 = "t2.micro"
aws_os                            = "amazon-2_lts"
aws_region                        = "us-east-1"
aws_subnet_cidr_block             = "192.168.1.0/24"
azure_cidr_block                  = "10.0.0.0/16"
azure_offer                       = "UbuntuServer"
azure_publisher                   = "Canonical"
azure_region                      = "us-east"
azure_sku                         = "18.04-LTS"
azure_subnet_cidr_block_1         = "10.0.1.0/24"
azure_subnet_cidr_block_2         = "10.0.2.0/24"
azure_version                     = "latest"
azure_virtual_network_gateway_sku = "VpnGw1"
create_test_vms                   = true
environment                       = "dev"
#
