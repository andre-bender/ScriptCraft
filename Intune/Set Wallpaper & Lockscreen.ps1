try {
    ### SET WALLPAPER
    Write-Host "Copying Wallpaper to C:\Windows\Web\Screen"
    Copy-Item -Path ".\backgroundDefault.jpg" -Destination "C:\Windows\Web\Screen" -Force

    ### SET LOCKSCREEN

    # Get the operating system language
    $osLanguage = (Get-WinSystemLocale).Name

    # Determine the destination folder based on the OS language
    if ($osLanguage -like "en-*") {
        # English OS
        Write-Host "Operating system language detected as English."
        Copy-Item -Path ".\defaultlockscreen_en.jpg" -Destination "C:\Windows\Web\Screen\defaultlockscreen.jpg" -Force
        Exit 0
    } elseif ($osLanguage -like "de-*") {
        # German OS
        Write-Host "Operating system language detected as German."
        Copy-Item -Path ".\defaultlockscreen.jpg" -Destination "C:\Windows\Web\Screen\defaultlockscreen.jpg" -Force
        Exit 0
    } else {
        # No German or English OS detected
        Write-Host "Operating system language is neither English nor German. English will be used."
        Copy-Item -Path ".\defaultlockscreen_en.jpg" -Destination "C:\Windows\Web\Screen\defaultlockscreen.jpg" -Force
        Exit 0
    }
} catch {
    Write-Host "Error while setting up Wallpaper & Lockscreen"
    Exit 1
}
