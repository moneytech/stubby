﻿Get-NetAdapter -Physical | ForEach-Object {
   $ifname = $_.Name
   Write-Host "Setting DNS servers on interface $ifname to use local resolver - the system will use Stubby if it is running"
   set-dnsclientserveraddress $ifname -ServerAddresses ("127.0.0.1","1::0")
}