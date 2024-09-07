$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$registryValueName = "NavPaneShowAllFolders"

Set-ItemProperty -Path $registryPath -Name $registryValueName -Value 0 -ErrorAction Stop