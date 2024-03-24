terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version "=3.75.0"
        }
    }
    backend "azurerm" {
        resource_group_name  = "#{tfSaResourceGroup}#"
        storage_account_name = "#{tfSaName}#"
        Container_name       = "#{tfSaContainerName}#"
        accesss_key          = "#{tfSaKey}#"
        Key                  = "terraform.state"  
    }
}

provides "azurerm" {
    tenent_id       = "#{tenentId}#"
    subscription_id = "#{subscriptionId}#"
    client_id       = "#{tfSpnClientId}#"
    client_screat   = "#{tfSpnClientSecret}#"

    features {}

    
}