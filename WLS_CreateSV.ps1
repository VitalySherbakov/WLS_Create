# ������ ������������ �����
while ($true) {
    Write-Host "1) ��������� WLS (����� ������������ ���������)"
	Write-Host "2) ���������� WLS"
	Write-Host "3) ��������� WLS (������������� ��������� Ubuntu)"
    Write-Host "4) ������ ��������� ������������� WLS"
	Write-Host "5) ��������� ������������ WLS"
	Write-Host "6) ������ ������ ��� Linex"
    $command= Read-Host "������� �����: "
	if ($command -eq 1) {
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
		dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
		wsl.exe --set-default-version 2
		Restart-Computer
		Write-Host "������������ ���������..."
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
        Write-Host "�������� ������ ������ ��������� �������: sudo su"
		Write-Host "���������� ������� � ������������: sudo apt update -y"
		Write-Host "���������� ������� � ������������: sudo apt upgrade -y"
		Write-Host "��������� ���������� ��������� �����: sudo apt install gnome-text-editor -y"
		Write-Host "��������� GIMP: sudo apt install gimp -y"
		Write-Host "��������� Nautilus: sudo apt install nautilus -y"
		Write-Host "��������� VLC: sudo apt install vlc -y"
		Write-Host "��������� ���������� X11: sudo apt install x11-apps -y"
		Write-Host "��������� Google Chrome ��� Linux 1: cd /tmp"
		Write-Host "��������� Google Chrome ��� Linux 2: wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
		Write-Host "��������� Google Chrome ��� Linux 3: sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb"
		Write-Host "��������� Google Chrome ��� Linux ������: google-chrome"
    }
}
