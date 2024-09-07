# connecT SYSTEMHAUS AG
# Date: 06.09.2024
# Author: Bender, Andre
# Description: Detects if Company Portal Shortcut exists

if(($osLanguage = (Get-WinSystemLocale).Name) -like "de-*"){
    $ShortcutName = "Unternehmensportal.lnk"
}elseif(($osLanguage = (Get-WinSystemLocale).Name) -like "en-*"){
    $ShortcutName = "Company Portal.lnk"
}else{
    $ShortcutName = "Company Portal.lnk"
}

if(Test-Path "C:\Users\Public\Desktop\$shortcutName"){
    Exit 0
}else{
    Exit 1
}