<# This sample script creates a web app in App Service with its related resources, and 
then deploys your web app code from a public GitHub repository (without continuous deployment)
#>

#$gitrepo = "https://github.com/ajaygupta711/app-service-web-dotnet-get-started.git"
$webappname = "ajaywebapp$(Get-Random)"
$location = "Central India"
$resourceGroup = "ajaysrggroup"

#create resource group
New-AzResourceGroup -Name $resourceGroup  -Location $location


# Create an App Service plan in Free tier.
New-AzAppServicePlan -Name  $webappname -ResourceGroupName $resourceGroup -Location $location -Tier Free


# Create a web app
New-AzWebApp -Name $webappname -AppServicePlan $webappname -ResourceGroupName $resourceGroup -Location $location
