# Author: Bender, André (ANB)
# Creation date: 21.03.2024
############################################

$NestedGroup = "MECM_App_FinalisierungRollback_AuthMembers"
$FinalGroup = "MECM_App_FinalisierungRollback_Auth"

# Collects GroupMembers and NestedGroups
#$GroupMembers = @(Get-ADGroupMember -Identity $NestedGroup | Where-Object { $_.objectClass -eq "user" })
#$NestedGroups = @(Get-ADGroupMember -Identity $NestedGroup | Where-Object { $_.objectClass -eq "group" })

$GroupMembers = Get-ADGroupMember -identity $NestedGroup -recursive

<#foreach ($Group in $NestedGroups){
    $NestedGroupMembers = Get-ADGroupMember -Identity $Group
}#>

#$TotalMembers = $GroupMembers + $NestedGroupMembers

# Clears final group for members not in nested group
Get-ADGroupMember -Identity $FinalGroup | ForEach-Object {
    if ($GroupMembers.Name -notcontains $_.Name) {
        Remove-ADGroupMember -Identity $FinalGroup -Members $_ -Confirm:$false
    }
}

# Adds members to final group
foreach ($Member in $GroupMembers) {
        Add-ADGroupMember -Identity $FinalGroup -Members $Member -Confirm:$false
    }