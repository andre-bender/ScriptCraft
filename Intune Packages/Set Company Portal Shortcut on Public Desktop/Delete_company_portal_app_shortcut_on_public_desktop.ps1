# connecT SYSTEMHAUS AG
# Date: 06.09.2024
# Author: Bender, Andre
# Description: Deletes a shortcut on public desktop for app company portal

if(($osLanguage = (Get-WinSystemLocale).Name) -like "de-*"){
    $ShortcutName = "Unternehmensportal.lnk"
}elseif(($osLanguage = (Get-WinSystemLocale).Name) -like "en-*"){
    $ShortcutName = "Company Portal.lnk"
}else{
    $ShortcutName = "Company Portal.lnk"
}

if(Test-Path "C:\Users\Public\Desktop\$shortcutName"){
    Remove-Item "C:\Users\Public\Desktop\$shortcutName"
}