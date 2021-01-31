wmic useraccount where name=`"$env:username`" set PasswordRequired=true
$RegistryPath = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon'
Set-ItemProperty $RegistryPath 'AutoAdminLogon' -Value "0" -Type String 
Set-ItemProperty $RegistryPath 'DefaultUserName' -Value "" -type String
Set-ItemProperty $RegistryPath 'DefaultDomainName' -Value "" -type String
Set-ItemProperty $RegistryPath 'DefaultPassword' -Value "" -type String