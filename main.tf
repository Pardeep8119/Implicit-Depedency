resource "azurerm_resource_group" "rg001" {
    name = "resourse01"
    location = "East US"
     
}

resource "azurerm_storage_account" "stor001" {
    name = "storag0001"
    resource_group_name = azurerm_resource_group.rg001.name 
    location = azurerm_resource_group.rg001.location
    account_tier = "Standard"
    account_replication_type = "ZRS"
  
}
