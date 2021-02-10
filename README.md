# AWS to Azure site to site VPN provisioned with Terraform

## THIS IS A WORK IN PROGRESS! Do not use.

Terraform code to deploy a highly available site-to-site VPN between AWS and Azure.

This script will create a tunnel between an AWS VPC and an Azure vNet, connecting resources from each cloud provider as if they were in the same local network.

The configuration is highly available so that it has enough resources to avoid any disruption during a  cloud provider maintenance window.

### Architecture

The main script contains all the necessary HCL commands for terraform to provision the VPN. There are also multiple local modules used to compartmentalize the logic for processing AWS specific user tags, Azure specific user tags, Azure region naming and finally the creation of test servers to test the functionality of the VPN gateways and tunnels.

Additionally logic is compartmentalized for reusuability and for code hygiene by using the following terraform modules:

- Module: `aws_user_tags` - This module gets AWS specific information such as the user ARN and puts it into a tag so that other administrators know who created the resource without having to scan the cloudwatch logs.

- Module: `azure_user_tags` - This module gets Azure specific information such as the user display name, client id, etcetera and puts it into a tag so that other administrators know who created the resource without having to scan the Azure logs.

- Module: `aws_ami-search` - This module automates finding the latest AWS ami image id for the selected operating system to be provisioned.

- Module: `azure-region` - This module will handle the various naming conventions for Azure regions that differ from the console and the CLI.

- Module: `create_test_vms` - This module will create a AWS EC2 instance and a Azure VM in the respective environemnts to test the VPN tunnel for connectivity.

- Module `key-pair` - This public module from the Terraform Registry (https://registry.terraform.io/modules/terraform-aws-modules/key-pair/aws/latest) handles all the AWS key pair processing. The output is also used by the module `create_test_vms`.

### Code Notes

To change the AWS region you must change the region in the AWS provider stanza in the file: `provider.tf`. It is currently set to us-east-1 in this repository. At this time you can not parameterize this value in terraform.

The `azurerm_subnet.subnet_gateway.name = "GatewaySubnet"`in `azurerm_subnet.tf`  is mandatory and only one "GatewaySubnet" is allowed per vNet in Azure. Leave this value alone.

The allocation_method in `azurerm_public_ip` in file `azurerm_public_ip.tf` must be set to dynamic. Public IP needs to be dynamic for the Virtual Network Gateway. The IP address will be dynamically generated after being attached to the Virtual Network Gateway.

The BGP (Border Gateway Protocol) ASN  (Autonomous System Numbers) is set to 65000 (Private ASN) on the AWS Customer Gateway as required by AWS.

### Provision

Adjust the values in the terraform.tfvars file to reflect your needs and environment.

```
custom_tags = {
  project  = "AWS to Azure VPN"
  Jira     = "AWS-917"
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
```

Perform the following commands

```bash
terraform init
```

The init command will load up the terraform modules and providers into your environment.

terraform fmt

The fmt (formt) command, will format your code and also spot any glaring errors like missing quotes, commas, etcetera.

```
terraform validate
```

The validate command will perform a more in depth error checking of your terraform code.

```
terraform plan -out=tfplan
```

The plan command will create a blueprint of what terraform plans to do. Review the output to make sure it will do what you want it to do. This script will provision 40+ resources across the AWS and Azure environments.

```
terraform apply tfplan
```

The apply command will execute what terraform planned in the plan command and provision the cloud resources to both the AWS and Azure clouds simultaneously. Be aware that this script can take over thirty (30) minutes to execute. Azure alone take about twenty minutes to provision its VPN gateway and AWS takes around twelve (12) minutes.

```
terraform destroy
```

The destroy command will remove all the assets provisioned from both AWS and Azure.

### Testing

On AWS, go to VPC > Site-to-Site VPN Connections and take a look at the Tunnel Details tab under vpn_connection_1 and vpn_connection_2

On Azure, go to Virtual Network Gateways > Connections

Connect to each instance/vm via the public IP on the respective servers and then ping the other's private IP address. The private_key.pem file is generated and saved in the root terraform directory of this script.
