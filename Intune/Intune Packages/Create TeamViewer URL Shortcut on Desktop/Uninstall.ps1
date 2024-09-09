# Pfad zur Zieldatei auf dem öffentlichen Desktop
$publicDesktopPath = [System.Environment]::GetFolderPath('CommonDesktopDirectory')
$shortcutPath = Join-Path -Path $publicDesktopPath -ChildPath "TeamViewer herunterladen.url"

# Removes .url from public desktop
if(Test-Path $shortcutPath){
    Remove-Item $shortcutPath -Force}
