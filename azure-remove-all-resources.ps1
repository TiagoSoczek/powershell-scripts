# WARNING: This will remove ALL resources groups of current subscription
# Other commands
# Get-AzureRmSubscription
# Select-AzureRmSubscription

Get-AzureRmResourceGroup | % { Remove-AzureRmResourceGroup -Name $_.ResourceGroupName -Verbose -Force; }