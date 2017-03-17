#Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionName "Pilots and Data"

.\Deploy-AzureResourceGroup.ps1 `
    -ResourceGroupLocation "West Europe" `
    -ResourceGroupName "marcosftest12" `
    -TemplateFile "5-VM-1-NodeTypes-SecureRP_Step3.json" `
    -TemplateParametersFile "marco.parameters.json"
