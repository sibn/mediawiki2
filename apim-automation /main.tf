resource "globalResourceGroupName" "mediawiki" {
  name     = "globalProductName"
  location = "asw"
}

resource "azurerm_network_security_group" "mediawiki" {
  name                = "mediawiki-security-group"
  location            = globalResourceGroupName.mediawiki.location
  resource_group_name = globalResourceGroupName.mediawiki.name
}

resource "azurerm_virtual_network" "mediawiki" {
  name                = network_Apim
  location            = globalResourceGroupName.mediawiki.location
  resource_group_name = lobalResourceGroupName
  address_space       = ["Ip_subnet"]
  dns_servers         = ["dns_servers"]

  subnet {
    name           = "subnet_name_1"
    address_prefix = "Adderss_prefix_1"
  }

  subnet {
    name           = "subnet_name_2"
    address_prefix = "Address_prefix_2"
    security_group = azurerm_network_security_group.mediawiki.id
  }

  tags = {
    environment = "envName"
  }
}


#Creating one public subnet
resource "azurerm_subnet" "public-subnets" {

    vnc_id                      = "${azurerm_vpc.main_vpc.id}"
    cidr_block                  = "_Ciderblock"
    map_public_ip_on_launch     = true

    tags = {
        Name                    = "public subnet"
  }
}



# Create Route  for Public Subnet
resource "azurerm_route_table" "public-rt" {
    vpc_id                      = "${azurerm_vpc.main_vpc.id}"

    route {
      cidr_block                = "0.0.0.0/0"
      gateway_id                = "${azurerm_internet_gateway.gw.id}"
    }

    tags                        = {
        Name                    = "${var.app_name}-Public-RT"
    }
}
