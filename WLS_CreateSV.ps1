# ������ ������������ �����
while ($true) {
	Write-Host "1) ������ �������� ������������"
    Write-Host "2) ��������� WLS (����� ������������ ���������)"
	Write-Host "3) ���������� WLS"
	Write-Host "4) ������ ��������� ������������� WLS"
	Write-Host "5) ������ ������������ ������������� WLS"
	Write-Host "6) ��������� WLS (������������� ��������� Ubuntu)"
	Write-Host "7) ��������� ������������ WLS"
	Write-Host "8) ������ ������ ��� Linex"
	Write-Host "9) ����� � �����������"
	Write-Host "10) ������� ����������� �������"
	Write-Host "11) ����� �� ������� (��� Ctrl+C)"
    $command= Read-Host "������� �����: "
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
		Write-Host "������������ ���������..."
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
		$distributive= Read-Host "������� �����������: "
		wsl.exe --install $distributive
    }
	if ($command -eq 8) {
		Write-Host "-----------------------------------------------"
        Write-Host "�������� ������ ������ ��������� �������: sudo su"
		Write-Host "���������� ������� � ������������: sudo apt update -y"
		$script="wsl -u root sudo apt upgrade -y"
		Write-Host "���������� ������� � ������������: sudo apt upgrade -y"
		$script2="wsl -u root sudo apt upgrade -y"
		Write-Host "��������� ���������� ��������� �����: sudo apt install gnome-text-editor -y"
		$script3="wsl -u root sudo apt install gnome-text-editor -y"
		Write-Host "��������� GIMP: sudo apt install gimp -y"
		$script4="wsl -u root sudo apt install gimp -y"
		Write-Host "��������� Nautilus: sudo apt install nautilus -y"
		$script5="wsl -u root sudo apt install nautilus -y"
		Write-Host "��������� VLC: sudo apt install vlc -y"
		$script6="wsl -u root sudo apt install vlc -y"
		Write-Host "��������� ���������� X11: sudo apt install x11-apps -y"
		$script7="wsl -u root sudo apt install x11-apps -y"
		Write-Host "��������� Google Chrome ��� Linux 1: cd /tmp"
		$script8="wsl -u root cd /tmp"
		Write-Host "��������� Google Chrome ��� Linux 2: wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		$script9="wsl -u root wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		Write-Host "��������� Google Chrome ��� Linux 3: sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb"
		$script10="wsl -u root sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb -y"
		Write-Host "��������� Google Chrome ��� Linux ������: google-chrome"
		$script11="wsl -u root google-chrome"
		# ����� �� WLS
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
		Write-Host "������� � �������: cd ~"
		Write-Host "������� � �������: cd /home/<��� ������������>"
		Write-Host "������� ��������� �����: cd .."
		Write-Host "������� ������ ������: sudo chmod 777 /home"
		Write-Host "������� ����������: ls"
		Write-Host "������� Windows �������� (C:): cd mnt/c"
        #wsl -u root
		$scriptchmod = "wsl -u root chmod 777 /home"
		Invoke-Expression $scriptchmod
		$script = "wsl -u root sudo su"
		# ��������� ������
		Invoke-Expression $script
    }
	if ($command -eq 10) {
		Write-Host "-----------------------------------------------"
        wsl -l
		$distributive= Read-Host "������� �����������: "
		wsl --unregister $distributive
    }
	if ($command -eq 11) {
		Write-Host "-----------------------------------------------"
        break  # ��������� ���������� �����
    }
	$pause= Read-Host "---------------------Enter---------------------"
}
