# WARNING: This will remove ALL resources groups of current subscription
# 1) Realizar login pelo comando: Login-AzureRmAccount
# 2) Visualizar subscriptions pelo comando: Get-AzureRmSubscription 
# 3) Selecionar subscription default. Select-AzureRmSubscription -SubscriptionName "Nome da subscription"
# 4) Executar comando abaixo:
Get-AzureRmResourceGroup | ? {$_.ResourceGroupName -ne "ignored-rg"} | % { Remove-AzureRmResourceGroup -Name $_.ResourceGroupName -Verbose -Force; }
# Caso seja necessário remover os locks
# Get-AzureRmResourceLock | Remove-AzureRmResourceLock -Force
