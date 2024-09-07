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
    
if(($AppPackageFamilyName = Get-AppxPackage -AllUsers *CompanyPortal* | Select-Object -ExpandProperty PackageFamilyName) -ne $null){
    Write-Host "CompanyPortal vorhanden"
}else{
    Write-Host "CompanyPortal nicht vorhanden"
}