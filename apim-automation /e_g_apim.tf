# APIs

resource "azurerm_api_managemnet_api" "mediawikifdend" {
    name                    = join("-", [local.envDnsZoneName, "mediawikifdend"])
    resource_group_name     = local.globalResourceGroupName
    api_mananagemnet_name   = local.apimName
    revision                =   "1"
    display_name            = join(" ", [local.envDnsZoneName, "mediawikifdend"])
    path                    = join("-", ["https://mediawiki", local.envDnsZoneName])
    service_url             = join(".", ["https://mediawiki", local.envDnsZoneName])
    protocols               = ["https"]
    
    import {
        contant_format ="openapi+json"
        content_value  = file("../api-definition/meidiawiki.json)
    }
}

resource "azurerm_api_managemnet_product_api" "mediawikifdend" {
    api_mananagemnet_name       = local.apimName
    resource_group_name         = local.globalResourceGroupName
    product_id                  = local.globalProductName
    api_mananagemnet_name       = azurerm_api_managemnet_api.mediawikfdend.name
    depends_on = [
        azurerm_api_managemnet_api.mediawiki
    ]
}

resource "azurerm_api_managemnet_api" "mediawikifdend"
api_mananagemnet_name           = azurerm_api_managemnet_api.mediawikifdend.name
api_mananagemnet_name           = local.apimName
resource_group_name             = local.globalResourceGroupName
xml_content                     = file("policies/mediawikiservice.xml")
