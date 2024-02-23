# Пример бесконечного цикла
while ($true) {
    Write-Host "1) Установка WLS (Будет Перезагрузка Компютера)"
	Write-Host "2) Обновление WLS"
	Write-Host "3) Установка WLS (Автоматически Установит Ubuntu)"
    Write-Host "4) Список Доступных Дистрибутивов WLS"
	Write-Host "5) Установка Дистрибутива WLS"
	Write-Host "6) Список Команд для Linex"
    $command= Read-Host "Выбрать Номер: "
	if ($command -eq 1) {
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
		dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
		wsl.exe --set-default-version 2
		Restart-Computer
		Write-Host "Перезагрузка Компютера..."
    }
	if ($command -eq 2) {
        wsl --update
		wsl --shutdown
    }
    if ($command -eq 3) {
        wsl --install
    }
    if ($command -eq 4) {
        wsl --list --online
    }
	if ($command -eq 5) {
        wsl --list --online
    }
	if ($command -eq 6) {
        Write-Host "Получить Полный Доступ Выполнять Команды: sudo su"
		Write-Host "Обновление пакетов в дистрибутиве: sudo apt update -y"
		Write-Host "Обновление пакетов в дистрибутиве: sudo apt upgrade -y"
		Write-Host "Установка текстового редактора Гнома: sudo apt install gnome-text-editor -y"
		Write-Host "Установка GIMP: sudo apt install gimp -y"
		Write-Host "Установка Nautilus: sudo apt install nautilus -y"
		Write-Host "Установка VLC: sudo apt install vlc -y"
		Write-Host "Установка приложений X11: sudo apt install x11-apps -y"
		Write-Host "Установка Google Chrome для Linux 1: cd /tmp"
		Write-Host "Установка Google Chrome для Linux 2: wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		Write-Host "Установка Google Chrome для Linux 3: sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb"
		Write-Host "Установка Google Chrome для Linux Запуск: google-chrome"
    }
}
