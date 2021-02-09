custom_tags = {
  project  = "AWS to Azure VPN"
  test_tag = "This is a test tag!"
}
application_code_name             = "aws-azure-vpn"
associate_public_ip_address       = true
aws_cidr_block                    = "192.168.0.0/16"
aws_instance_type                 = "t2.micro"
aws_os                            = "amazon-2_lts"
aws_region                        = "us-east-1"
aws_subnet_cidr_block             = "192.168.1.0/24"
azure_cidr_block                  = "10.0.0.0/16"
azure_region                      = "us-east"
azure_subnet_cidr_block_1         = "10.0.1.0/24"
azure_subnet_cidr_block_2         = "10.0.2.0/24"
azure_virtual_network_gateway_sku = "VpnGw1"
create_test_vms                   = true
environment                       = "dev"
