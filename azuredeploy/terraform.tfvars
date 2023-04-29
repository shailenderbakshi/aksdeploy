resource_group_name = "kubernetes-rg"
location            = "uksouth"
vnet_name           = "k8-vnet"
network_address_space           = ["10.0.0.0/16"]
aks_subnet_address_name        = "k8-subnet"
aks_subnet_address_prefix     = ["10.0.1.0/24"]
appgw_subnet_address_prefix = ["10.0.4.0/24"]
appgw_subnet_address_name    = "APG-Subnet"
aks_name         = "NottsK8cluster"
kubernetes_version        = "1.24"
Gatewaysubnet       = ["10.0.6.0/25"]
agent_count            = "2"
vm_size             = "Standard_B2s"
ssh_public_key           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzF1I/OdIlkKYYqkpnVWQ6tgAoK3M+As1nkEgaRkGC4rGNDIaAFyrejZ+BlLuLb/PSAYgV4yB8IqsNCMdLDtjmYAa6cJgUr3VLw1QoNE+o5xQnRuIMRrEWlKJANly/BEpT6HBwLg97Su2JtMkkRYBrKBS68wZlfa6NvozIgYNuFaYMlsef3ePfFJLJpD7QN6Lbsv0pgn/Fix1yb6ftvf8bGbVLZuNv/SES2e6KPWjbkDkyWyyYWPVAHE1tasB+d21lf79mzJt8W5xgqGdLgQEJFK5/eheEpGTX6ihnWxj750ZTGTnHPcK2VHEncYFjzSws0f/9NlR4TbLFcESanENOGXXpPhFXR8rHn2BibYjfHX1oxFUkhq9LCRV1Y+RU0A9bQWa+k0x+70Vafpw28Vvq40QdVbkZU9yiRun/Gs43IStvqP3P5ABaJH7PbVcJWL05/MIx6abOi3s2fpHjsbCeUOnQQYKSMg7VyVfjhnk6P3y3H9qbIeVW+q0h/0eUOjU= generated-by-azure"