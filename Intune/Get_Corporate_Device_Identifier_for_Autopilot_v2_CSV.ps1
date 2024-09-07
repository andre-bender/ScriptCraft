# Sets Output folder
$publicDesktopPath = [System.Environment]::GetFolderPath('CommonDesktopDirectory')

# Capture the output from WMI objects
$computerSystem = Get-WmiObject -Class Win32_ComputerSystem
$bios = Get-WmiObject -Class Win32_BIOS

# Combine the results into a single string
$data = "$($computerSystem.Manufacturer),$($computerSystem.Model),$($bios.SerialNumber)"

# Write the data to a CSV file without headers
Set-Content -Path "system_info.csv" -Value $data
