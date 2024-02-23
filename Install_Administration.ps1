$Title="Установка Прав Администратора  (автор Barlog Udun)"
$EnterPause="Жмите Enter......................"
$host.UI.RawUI.WindowTitle = $Title
Write-Host -----------------------$Title-----------------------
Read-Host Установка Запуск $EnterPause
Get-CimInstance -ClassName Win32_OperatingSystem
Set-ExecutionPolicy unrestricted
Set-ExecutionPolicy Bypass 
set-executionpolicy remotesigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Write-Host Установка Завершена!