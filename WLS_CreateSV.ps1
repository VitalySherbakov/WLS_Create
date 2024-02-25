# Пример бесконечного цикла
while ($true) {
	Write-Host "1) Версия Тикущего Дестрибутива"
    Write-Host "2) Установка WLS (Будет Перезагрузка Компютера)"
	Write-Host "3) Обновление WLS"
	Write-Host "4) Список Доступных Дистрибутивов WLS"
	Write-Host "5) Список Установленых Дистрибутивов WLS"
	Write-Host "6) Установка WLS (Автоматически Установит Ubuntu)"
	Write-Host "7) Установка Дистрибутива WLS"
	Write-Host "8) Список Команд для Linex"
	Write-Host "9) Войти в Дистрибутив"
	Write-Host "10) Удалить Дистрибутив Тикущий"
	Write-Host "11) Выход из Скрипта (или Ctrl+C)"
    $command= Read-Host "Выбрать Номер: "
	if ($command -eq 1) {
		Write-Host "-----------------------------------------------"
        wsl -l
		$script="wsl -u root uname -a"
		Invoke-Expression $script
		$script1="wsl -u root lsb_release -a"
		Invoke-Expression $script1
		$script2="wsl -u root hostname -I"
		Invoke-Expression $script2
    }
	if ($command -eq 2) {
		Write-Host "-----------------------------------------------"
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
		dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
		wsl.exe --set-default-version 2
		Restart-Computer
		Write-Host "Перезагрузка Компютера..."
    }
	if ($command -eq 3) {
		Write-Host "-----------------------------------------------"
        wsl --update
		wsl --shutdown
    }
	if ($command -eq 4) {
		Write-Host "-----------------------------------------------"
        wsl --list --online
    }
	if ($command -eq 5) {
		Write-Host "-----------------------------------------------"
        wsl -l
    }
    if ($command -eq 6) {
		Write-Host "-----------------------------------------------"
        wsl --install
    }  
	if ($command -eq 7) {
		Write-Host "-----------------------------------------------"
        wsl --list --online
		$distributive= Read-Host "Выбрать Дистрибутив: "
		wsl.exe --install $distributive
    }
	if ($command -eq 8) {
		Write-Host "-----------------------------------------------"
        Write-Host "Получить Полный Доступ Выполнять Команды: sudo su"
		Write-Host "Обновление пакетов в дистрибутиве: sudo apt update -y"
		$script="wsl -u root sudo apt upgrade -y"
		Write-Host "Обновление пакетов в дистрибутиве: sudo apt upgrade -y"
		$script2="wsl -u root sudo apt upgrade -y"
		Write-Host "Установка текстового редактора Гнома: sudo apt install gnome-text-editor -y"
		$script3="wsl -u root sudo apt install gnome-text-editor -y"
		Write-Host "Установка GIMP: sudo apt install gimp -y"
		$script4="wsl -u root sudo apt install gimp -y"
		Write-Host "Установка Nautilus: sudo apt install nautilus -y"
		$script5="wsl -u root sudo apt install nautilus -y"
		Write-Host "Установка VLC: sudo apt install vlc -y"
		$script6="wsl -u root sudo apt install vlc -y"
		Write-Host "Установка приложений X11: sudo apt install x11-apps -y"
		$script7="wsl -u root sudo apt install x11-apps -y"
		Write-Host "Установка Google Chrome для Linux 1: cd /tmp"
		$script8="wsl -u root cd /tmp"
		Write-Host "Установка Google Chrome для Linux 2: wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		$script9="wsl -u root wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		Write-Host "Установка Google Chrome для Linux 3: sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb"
		$script10="wsl -u root sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb -y"
		Write-Host "Установка Google Chrome для Linux Запуск: google-chrome"
		$script11="wsl -u root google-chrome"
		# Выход из WLS
		$script12="wsl -u root exit"
		Invoke-Expression $script
		Invoke-Expression $script2
		Invoke-Expression $script3
		Invoke-Expression $script4
		Invoke-Expression $script5
		Invoke-Expression $script6
		Invoke-Expression $script7
		Invoke-Expression $script8
		Invoke-Expression $script9
		Invoke-Expression $script10
		Invoke-Expression $script11
		Invoke-Expression $script12
    }
	if ($command -eq 9) {
		Write-Host "-----------------------------------------------"
		Write-Host "Команда в Систему: cd ~"
		Write-Host "Команда в Систему: cd /home/<Имя Пользователя>"
		Write-Host "Команда Вернуться Назад: cd .."
		Write-Host "Команда Полный Доступ: sudo chmod 777 /home"
		Write-Host "Команда Содержымое: ls"
		Write-Host "Команда Windows Каталога (C:): cd mnt/c"
        #wsl -u root
		$scriptchmod = "wsl -u root chmod 777 /home"
		Invoke-Expression $scriptchmod
		$script = "wsl -u root sudo su"
		# Выполняем скрипт
		Invoke-Expression $script
    }
	if ($command -eq 10) {
		Write-Host "-----------------------------------------------"
        wsl -l
		$distributive= Read-Host "Выбрать Дистрибутив: "
		wsl --unregister $distributive
    }
	if ($command -eq 11) {
		Write-Host "-----------------------------------------------"
        break  # Прерываем выполнение цикла
    }
	$pause= Read-Host "---------------------Enter---------------------"
}
