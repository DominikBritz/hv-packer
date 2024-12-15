# Post updates entries, not required to do a reboot
Write-Output "Phase ua1 [START] - Apps"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$apps = @("7zip","notepadplusplus","vscode","git","putty","winscp","docker-desktop")

foreach ($app in $apps) {
    choco install $app -y --no-progress --limit-output
}

Write-Output "Phase ua1 [END]- Apps"

