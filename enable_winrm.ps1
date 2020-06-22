<powershell>

Restart-Service -Name WinRM
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1' -UseBasicParsing -Outfile $env:TEMP\ConfigureRemotingForAnsible.ps1

. "$($env:TEMP)\ConfigureRemotingForAnsible.ps1" -CertValidityDays 3650

</powershell>
