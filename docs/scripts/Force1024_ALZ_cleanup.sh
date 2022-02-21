#!/bin/bash

# subscriptionId where the Azure Landing Zone resources
subscription_id=""

# login to Azure (browser)
# az login
# or...
# connect to specific tenant
# az login --tenant $name

# list MGs
# az account management-group list

# drop LZ MG Hierarchy
az account management-group delete --name "alz-landingzones-corp"
az account management-group delete --name "alz-landingzones-online"
az account management-group delete --name 'alz-landingzones'
az account management-group delete --name "alz-decommissioned"
az account management-group delete --name "alz-platform-connectivity"
az account management-group delete --name "alz-platform-identity"
az account management-group delete --name "alz-platform-management"
az account management-group delete --name "alz-platform"
az account management-group delete --name "alz-sandbox"
az account management-group delete --name 'alz'

# drop the alz-logging RG
az resource delete --ids "/subscriptions/$subscription_id/resourceGroups/alz-logging" --verbose

# drop the Hub_Networking_POC RG
az resource delete --ids "/subscriptions/$subscription_id/resourceGroups/Hub_Networking_POC" --verbose