targetScope= 'resourceGroup' // スコープはデフォでresourceGroup

@minLength(3)
@maxLength(24)
param StorageAccountName string = 'takbiceppipelinetester'
param Location string = resourceGroup().location
param StorageAccountSKU string = 'Standard_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: StorageAccountName
  location: Location
  kind: 'StorageV2'
  sku: {
    name: StorageAccountSKU
  }
}
