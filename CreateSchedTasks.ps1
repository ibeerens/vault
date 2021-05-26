# Start Vault
$Trigger= New-ScheduledTaskTrigger -AtStartUp
$User= "NT AUTHORITY\SYSTEM"
$Action= New-ScheduledTaskAction -Execute "e:\vault\vault.exe" -Argument "server -config e:\vault\config.hcl"
Register-ScheduledTask -TaskName "Start Vault Service" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest –Force
