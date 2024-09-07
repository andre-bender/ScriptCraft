Set ShortcutDisplayName to the desired Name.

Install command: 
%windir%\sysnative\windowspowershell\v1.0\powershell.exe -ExecutionPolicy Bypass -file "CreateDesktopIcon.ps1" -ShortcutTargetPath "cmd" -ShortcutDisplayName "cmd"

Uninstall command:
%windir%\sysnative\windowspowershell\v1.0\powershell.exe -ExecutionPolicy Bypass -file "RemoveDesktopIcon.ps1" -ShortcutDisplayName "cmd"

For Windows Apps the commands are different. The AUMID is needed and Windows Apps Shortcuts only work on User Desktop (not public Desktop)

Install command:
powershell.exe -ExecutionPolicy Bypass -file "CreateDesktopIcon.ps1" -ShortcutTargetPath "shell:AppsFolder\Microsoft.CompanyPortal_8wekyb3d8bbwe!App" -ShortcutDisplayName "Unternehmensportal"