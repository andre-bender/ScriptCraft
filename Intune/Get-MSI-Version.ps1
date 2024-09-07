Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Erstellt eine Funktion, die eine Dialogbox zum Auswählen einer Datei anzeigt
function Select-MSIFile {
    $openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $openFileDialog.Filter = "MSI files (*.msi)|*.msi"
    $openFileDialog.Title = "Select an MSI File"
    $openFileDialog.ShowDialog() | Out-Null
    return $openFileDialog.FileName
}

# Funktion zum Extrahieren der Version und der GUID aus der MSI-Datei
function Get-MSIInfo {
    param(
        [string]$filePath
    )

    $msi = New-Object -ComObject WindowsInstaller.Installer
    $database = $msi.GetType().InvokeMember('OpenDatabase', 'InvokeMethod', $null, $msi, @($filePath, 0))

    $query = "SELECT Value FROM Property WHERE Property = 'ProductVersion'"
    $view = $database.GetType().InvokeMember('OpenView', 'InvokeMethod', $null, $database, ($query))
    $view.GetType().InvokeMember('Execute', 'InvokeMethod', $null, $view, $null)
    $record = $view.GetType().InvokeMember('Fetch', 'InvokeMethod', $null, $view, $null)
    $version = $record.GetType().InvokeMember('StringData', 'GetProperty', $null, $record, 1)

    $query = "SELECT Value FROM Property WHERE Property = 'ProductCode'"
    $view = $database.GetType().InvokeMember('OpenView', 'InvokeMethod', $null, $database, ($query))
    $view.GetType().InvokeMember('Execute', 'InvokeMethod', $null, $view, $null)
    $record = $view.GetType().InvokeMember('Fetch', 'InvokeMethod', $null, $view, $null)
    $guid = $record.GetType().InvokeMember('StringData', 'GetProperty', $null, $record, 1)

    # Freigabe des COM-Objekts
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($database) | Out-Null

    [PSCustomObject]@{
        Version = $version
        GUID = $guid
    }
}

# GUI für Dateiauswahl anzeigen
$selectedFilePath = Select-MSIFile

if (-not [string]::IsNullOrEmpty($selectedFilePath)) {
    $msiInfo = Get-MSIInfo -filePath $selectedFilePath

    # Anzeige der Informationen in der Konsole
    Write-Host "Version: $($msiInfo.Version)"
    Write-Host "GUID: $($msiInfo.GUID)"
}

Read-Host -Prompt "Press Enter to exit"
