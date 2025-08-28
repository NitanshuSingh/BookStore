resource "azurerm_resource_group" "rg" {
  name     = "dev-rg"
  location = "eastus"
}

resource "azurerm_storage_account" "strg" {
  name                     = "shrustrg"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}

resource "azurerm_storage_container" "blob" {
  name               = "devblob"
  storage_account_id = azurerm_storage_account.strg.id
}
