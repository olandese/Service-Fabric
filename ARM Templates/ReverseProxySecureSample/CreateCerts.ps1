Import-Module ".\ServiceFabricRPHelpers.psm1"

$ResouceGroup = "ecsaz-bdp-config"
$VName = "ecsaz-bdp-vault-d"
$SubID = "047ac885-a2f8-4f3d-8e17-04646a704e7e"
$locationRegion = "westeurope"
$newCertName = "marcosfcluster12"
$dnsName = "marcosfcluster12.westeurope.cloudapp.azure.com" #The certificate's subject name must match the domain used to access the Service Fabric cluster.
$localCertPath = "D:\MyCertificates" # location where you want the .PFX to be stored

Invoke-AddCertToKeyVault -SubscriptionId $SubID -ResourceGroupName $ResouceGroup -Location $locationRegion -VaultName $VName -CertificateName $newCertName -CreateSelfSignedCertificate -DnsName $dnsName -OutputPath $localCertPath

$ResouceGroup = "ecsaz-bdp-config"
$VName = "ecsaz-bdp-vault-d"
$SubID = "047ac885-a2f8-4f3d-8e17-04646a704e7e"
$locationRegion = "westeurope"
$newCertName = "marcosfcluster12rp"
$dnsName = "marcosfcluster12.westeurope.cloudapp.azure.com" #The certificate's subject name must match the domain used to access the Service Fabric cluster.
$localCertPath = "D:\MyCertificates" # location where you want the .PFX to be stored

Invoke-AddCertToKeyVault -SubscriptionId $SubID -ResourceGroupName $ResouceGroup -Location $locationRegion -VaultName $VName -CertificateName $newCertName -CreateSelfSignedCertificate -DnsName $dnsName -OutputPath $localCertPath
