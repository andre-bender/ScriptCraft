$groupname = "GRP.MAC-AUTH-DRUCKER"
$ServerOldAD = "srv-dc1.abaeumer.int"
$ServerNewAD = "srv-abg-00a.intra.baeumer"
$TargetOUNewMacUsers = "OU=OLD-Devices,OU=MacAuth,OU=Users,OU=AD,OU=AD_BAEUMER,DC=intra,DC=baeumer"
$TargetGroup = "RADIUS_VLAN0001_OLD-Devices"

$UsersADNeu = get-aduser -Server $ServerNewAD -filter *

$adgroupmembers = Get-ADGroupMember -Identity $(Get-ADGroup -Server $serverOldAD -Identity $groupname) -Recursive | Where-Object {$_.distinguishedName -notlike "*OU=Alt (nicht mehr nutzen),*"}

$AusgabeGesamt  = @()
$Member = @{
        MemberType = "NoteProperty"
        Force = $true
        }

 
# Abfrage Quelle und prüfen ob schon vorhanden
foreach ($adgroupmember in $adgroupmembers) {

    $currentuser = $null
    $currentuser = get-aduser $adgroupmember.distinguishedName -server $serverOldAD -Properties *

    if ($usersadneu.samaccountname -contains $currentuser.sAMAccountName) {
        write-host "$($currentuser.sAMAccountName) $($currentuser.Name) $($currentuser.Description) | gibt es schon --> wird nicht angelegt!" -ForegroundColor Yellow
    }
    else
    {
        $Ausgabe = New-Object psObject
        $Ausgabe | Add-Member @Member -Name "Name" -Value $currentuser.name
        $Ausgabe | Add-Member @Member -Name "sAMAccountName" -Value $currentuser.sAMAccountName
        $Ausgabe | Add-Member @Member -Name "Description" -Value $currentuser.Description
        $Ausgabe | Add-Member @Member -Name "Name_NEU" -Value $("MacAuth_"+$($currentuser.name -replace 'TEMP_','' -replace "_","-" -replace " ","-"))

        $AusgabeGesamt += $Ausgabe
    }

}
   
#$AusgabeGesamt | select * | Out-GridView



# Anlegen der Accounts
foreach ($i in $AusgabeGesamt) {

    New-ADUser -Name $i.Name_NEU -DisplayName $i.Name_NEU -SamAccountName $i.sAMAccountName -UserPrincipalName $($i.sAMAccountName+"@intra.baeumer") -Path $TargetOUNewMacUsers -Description $i.Description -Server $ServerNewAD

    Add-ADGroupMember -Identity (Get-ADGroup $TargetGroup) -Members $i.sAMAccountName-Server $ServerNewAD

    Set-ADAccountPassword -Identity $i.sAMAccountName -NewPassword (ConvertTo-SecureString -AsPlainText $i.sAMAccountName -Force) -Server $ServerNewAD 

    Enable-ADAccount -Identity $i.sAMAccountName-Server $ServerNewAD

}