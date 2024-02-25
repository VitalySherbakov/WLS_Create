# Пример бесконечного цикла
while ($true) {
	Write-Host "1) Ticking Distribution Version"
    Write-Host "2) Installing WSL (The Computer Will Reboot)"
	Write-Host "3) WLS update"
	Write-Host "4) List of Available WLS Distributions"
	Write-Host "5) List of Installed WSL Distributions"
	Write-Host "6) Installing WLS (Will Automatically Install Ubuntu)"
	Write-Host "7) Installing the WLS Distribution"
	Write-Host "8) List of Commands for Linex"
	Write-Host "9) Login to Distribution"
	Write-Host "10) Remove Distribution Ticking"
	Write-Host "11) Exit Script (or Ctrl+C)"
    $command= Read-Host "Select Number: "
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
		Write-Host "Restarting the Computer..."
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
		$distributive= Read-Host "Select Distribution: "
		wsl.exe --install $distributive
    }
	if ($command -eq 8) {
		Write-Host "-----------------------------------------------"
        Write-Host "Get Full Access Execute Commands: sudo su"
		Write-Host "Updating packages in the distribution: sudo apt update -y"
		$script="wsl -u root sudo apt upgrade -y"
		Write-Host "Updating packages in the distribution: sudo apt upgrade -y"
		$script2="wsl -u root sudo apt upgrade -y"
		Write-Host "Installation Gnome text editor: sudo apt install gnome-text-editor -y"
		$script3="wsl -u root sudo apt install gnome-text-editor -y"
		Write-Host "Installation GIMP: sudo apt install gimp -y"
		$script4="wsl -u root sudo apt install gimp -y"
		Write-Host "Installation Nautilus: sudo apt install nautilus -y"
		$script5="wsl -u root sudo apt install nautilus -y"
		Write-Host "Installation VLC: sudo apt install vlc -y"
		$script6="wsl -u root sudo apt install vlc -y"
		Write-Host "Installation applications X11: sudo apt install x11-apps -y"
		$script7="wsl -u root sudo apt install x11-apps -y"
		Write-Host "Installation Google Chrome to Linux 1: cd /tmp"
		$script8="wsl -u root cd /tmp"
		Write-Host "Installation Google Chrome to Linux 2: wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		$script9="wsl -u root wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		Write-Host "Installation Google Chrome to Linux 3: sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb"
		$script10="wsl -u root sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb -y"
		Write-Host "Installing Google Chrome for Linux Launching: google-chrome"
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
		Write-Host "Team to the System: cd ~"
		Write-Host "Team to the System: cd /home/<Username>"
		Write-Host "Team Go Back: cd .."
		Write-Host "Team Full Access: sudo chmod 777 /home"
		Write-Host "Command Content: ls"
		Write-Host "Windows Directory Command (C:): cd mnt/c"
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
		$distributive= Read-Host "Select Distribution: "
		wsl --unregister $distributive
    }
	if ($command -eq 11) {
		Write-Host "-----------------------------------------------"
        break  # Прерываем выполнение цикла
    }
	$pause= Read-Host "---------------------Enter---------------------"
}
