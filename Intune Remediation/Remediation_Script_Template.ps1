# Remediation Script
$regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\238C9FA8-0AAD-41ED-83F4-97BE242C8F20\7bc4a2f9-d8fc-4469-b07b-33eb785aaca0"
$regName = "Attributes"

try {
    $value = Get-ItemProperty -Path $regPath -Name $regName -ErrorAction Stop
    if ($value.$regName -eq 1) {
        Set-ItemProperty -Path $regPath -Name $regName -Value 1 -ErrorAction Stop
    }
    exit 0
} catch {
    # If an error occurs, return code 1 to indicate failure
    exit 1
}
