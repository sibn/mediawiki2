locals{
    location ="uksouth"
    resourcePrefix = var.environment

    regionalResourceGroupName= join("",[var.project, var.platform, title(substr(local.location, 0, 3)), "Regional", "Rg"])
    join("", [var.project, var.platform, "Ukw", "Regional", "Rg"])
    join("", [var.project, var.platform, "Global", "Rg"])
    join("", [var.project, var.platform, "Global", var., var.apim])
    join("", [var.environment, "mediawiki"])

    #reginon envDnsZoneName
    envResourceGroupName        = join("", [var.project, var.platform, "Global", title(var.environment), "mediawiki", "Rg"])
    envDnsZoneName              = join("". [var.environment], mediawiki)
    envDnsZone                  = lover(join(".", [local.envDnsZoneName, var.regionalDnsZone]))
# endrefion 
}