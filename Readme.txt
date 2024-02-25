Получение Прав Администратора Запустив PowerShell
Команды Получения Прав
1) Get-CimInstance -ClassName Win32_OperatingSystem
2) Set-ExecutionPolicy unrestricted
3) Set-ExecutionPolicy Bypass 
4) set-executionpolicy remotesigned
5) Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
6) Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

Следущий Кодировка ANSI Скрипт WLS_CreateSV.ps1 
Следущий Кодировка UTF-8 Скрипт WLS_CreateSV_UTF8.ps1