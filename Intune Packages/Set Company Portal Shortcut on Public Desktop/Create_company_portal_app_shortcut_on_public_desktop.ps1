# connecT SYSTEMHAUS AG
# Date: 06.09.2024
# Author: Bender, Andre
# Description: Creates a shortcut on public desktop for app company portal

if(($osLanguage = (Get-WinSystemLocale).Name) -like "de-*"){
    $ShortcutName = "Unternehmensportal.lnk"
}elseif(($osLanguage = (Get-WinSystemLocale).Name) -like "en-*"){
    $ShortcutName = "Company Portal.lnk"
}else{
    $ShortcutName = "Company Portal.lnk"
}
    
if(($AppPackageFamilyName = Get-AppxPackage *CompanyPortal* | Select-Object -ExpandProperty PackageFamilyName) -ne $null){
    $AppLink = "$AppPackageFamilyName" + "!" + "App"
    $WScriptShell = New-Object -ComObject WScript.Shell
    $Shortcut = $WScriptShell.CreateShortcut("C:\Users\Public\Desktop\$shortcutName")
    $Shortcut.Arguments="shell:AppsFolder\$AppLink"
    $Shortcut.TargetPath = "shell:AppsFolder\$AppLink"
    $Shortcut.Save()
}else{
    Write-Host "Company Portal not found"
}