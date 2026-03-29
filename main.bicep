param location string = resourceGroup().location
param storageAccountName string = 'bicep${uniqueString(resourceGroup().id)}'

resource storageAccountDK 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'mystorageaccount'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
