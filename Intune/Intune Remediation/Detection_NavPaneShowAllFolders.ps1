$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$registryValueName = "NavPaneShowAllFolders"

# Check if the registry path exists
if (Test-Path $registryPath) {
    Write-Output "Registry Path '$registryPath' exists."

    # Check if the value exists
    $value = Get-ItemProperty -Path $registryPath -Name $registryValueName -ErrorAction SilentlyContinue

    if ($null -ne $value) {
        Write-Host "Value '$registryValueName' exists and has value: $($value.$registryValueName)"
        
        # Check if the value is 1
        if ($value.$registryValueName -eq 1) {
            Write-Host "Value is 1 and needs to be changed."
            Exit 1
        } else {
            Write-Host "Value isn't 1. No change needed."
            Exit 0
        }
    } else {
        Write-Host "Value '$registryValueName' doesn't exist."
        Exit 0
    }
} else {
    Write-Host "Registry Path '$registryPath' doesn't exist."
    Exit 0
}
