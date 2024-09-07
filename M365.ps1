##### EXCHANGE ONLINE #####
# Install EXO (erfordert loakle Adminrechte)
Install-Module ExchangeOnlineManagement
# Importiert EXO
Import-Module ExchangeOnlineManagement
# Connect to EXO
Connect-ExchangeOnline
# Verbindet automatisch zu EXO
$Username = "bender@cnag.de"
$SecPasswd = Get-Content -Path "C:\temp\SecureStringBender.txt" | ConvertTo-SecureString
$Credentials = New-Object System.Management.Automation.PSCredential ($Username, $SecPasswd)
Connect-ExchangeOnline -Credential $credentials

# Aus einem freigegebenen Postfach gesendeten Nachrichten werden nicht im Ordner „Gesendete Elemente“ des freigegebenen Postfachs in Outlook gespeichert
# F�hren Sie mit Exchange PowerShell f�r E-Mails, die mit dem freigegebenen Postfach als Absender gesendet werden, das folgende Cmdlet aus:
set-mailbox <mailbox name> -MessageCopyForSentAsEnabled $True
# F�hren Sie mit Exchange PowerShell f�r E-Mails, die im Namen des freigegebenen Postfachs gesendet werden, das folgende Cmdlet aus: 
set-mailbox <mailbox name> -MessageCopyForSendOnBehalfEnabled $True
# Pr�fen ob Werte erfolgreich gesetzt wurden mit
get-mailbox <mailbox name> | select MessageCopy*

##### ENTRA ID Sync #####
# Startet einen Delta Sync für den Entra ID connector
Start-ADSyncSyncCycle -PolicyType Delta
