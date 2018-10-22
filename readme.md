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
