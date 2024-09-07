# connecT SYSTEMHAUS AG
# Date: 05.06.2024
# Author: Bender, Andre
# Description: Copies BitLocker recovery keys of type 'RecoveryPassword' from client to Entra (Azure AD)

try {
    # Get the list of all BitLocker volumes on the client machine
    $BitLockerVolumes = Get-BitLockerVolume

    # Loop through each BitLocker volume
    foreach ($blv in $BitLockerVolumes) {
        # Loop through each KeyProtector for the current BitLocker volume
        foreach ($keyProtector in $blv.KeyProtector) {
            # Check if the KeyProtectorType is 'RecoveryPassword'
            if ($keyProtector.KeyProtectorType -eq 'RecoveryPassword') {
                # Backup the BitLocker recovery key to Azure AD
                BackupToAAD-BitLockerKeyProtector -MountPoint $blv.MountPoint -KeyProtectorId ($keyProtector | Select-Object -ExpandProperty KeyProtectorID)
            }
        }
    }
    # Return true if the operation is successful
    return $true
}
catch {
    # Return false if there is an error
    return $false
}
