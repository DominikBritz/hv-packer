# Post updates entries, not required to do a reboot
Write-Output "Phase ua2 [START] - OS"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Disable logon script delay. Avoids the default 5 minute waiting time for uberAgent LogonDetail events to appear in the backend.
Set-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Windows\System'-name "EnableLogonScriptDelay" -Value 0 -Verbose -Force

# Allow RDP connections
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
net localgroup "Remote Desktop Users" Everyone /ADD

# Locale
Set-WinUserLanguageList -Force 'de-DE'


Write-Output "Phase ua2 [END]- OS"

