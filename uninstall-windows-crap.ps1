# Remove all crap axcept calculator. -AllUsers optional

Get-AppXPackage | where-object {$_.name -notlike "*calculator*" -and $_.name -notlike "*photo*" -and $_.name -notlike "*store*"} | Remove-AppxPackage

# DIE CORTANA
New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\' -Name 'Windows Search' | Out-Null
New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -PropertyType DWORD -Value '0' | Out-Null
