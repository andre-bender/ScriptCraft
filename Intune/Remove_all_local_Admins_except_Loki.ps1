# Define the exceptions
$exceptions = @('Loki', 'Administrator')

# Function to get the local Administrators group name based on system language
function Get-LocalAdminGroupName {
    $language = (Get-WinSystemLocale).Name
    if ($language -like "de-*") {
        return "Administratoren"
    } else {
        return "Administrators"
    }
}

# Get the Administrators group name
$adminGroupName = Get-LocalAdminGroupName

# Check if user "Loki" exists
$userLoki = Get-WmiObject -Class Win32_UserAccount -Filter "Name='Loki'"

if ($userLoki -eq $null) {
    Write-Output "User 'Loki' does not exist. Exiting script."
    Exit 1
}

# Get the Administrators group
$adminGroup = [ADSI]"WinNT://./$adminGroupName,group"

# Get the members of the Administrators group
$members = @($adminGroup.psbase.Invoke("Members")) | ForEach-Object {
    $_.GetType().InvokeMember("AdsPath", 'GetProperty', $null, $_, $null)
}

# Loop through each member
foreach ($memberPath in $members) {
    # Get the ADSI object for the member
    $memberObject = [ADSI]$memberPath
    $memberName = $memberObject.Name

    # Check if the member is a user and not a group
    if ($memberObject.SchemaClassName -eq 'User') {
        # Check if the member is not in the exceptions list
        if ($exceptions -notcontains $memberName) {
            # Remove the user from the Administrators group
            $adminGroup.Remove($memberObject.AdsPath)
            Write-Output "Removed $memberName from the $adminGroupName group."
            
            # Disable the user account
            $memberObject.AccountDisabled = $true
            $memberObject.SetInfo()
            Write-Output "Disabled the account $memberName."
        } else {
            Write-Output "$memberName is in the exceptions list, not removing or disabling."
        }
    } else {
        Write-Output "$memberName is a group, not removing or disabling."
    }
    Exit 0
}
