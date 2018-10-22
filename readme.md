### Accounts
az login

### get subscription and tenant Id
az account show --query "{subscriptionId:id, tenantId:tenantId}"
az account set --subscription=${SUBSCRIPTION_ID}
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"

### set ennvironment varialbe
export ARM_SUBSCRIPTION_ID=
export ARM_CLIENT_ID=
export ARM_CLIENT_SECRET=
export ARM_TENANT_ID=

### azure command query
az ad sp list --query '[].{id:appId, name:displayName}' -o tsv

### set up remote state

az storage container create -n tfstate --account-name sharedacct --account-key <access_key>

terraform init -backend-config="storage_account_name=sharedacct" -backend-config="container_name=tfstate" -backend-config="access_key=<access_key>" -backend-config="key=codelab.microsoft.tfstate"

