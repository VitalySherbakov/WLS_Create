# ������ ������������ �����
while ($true) {
    Write-Host "1) ��������� WLS (����� ������������ ���������)"
	Write-Host "2) ��������� WLS (������������� ��������� Ubuntu)"
    Write-Host "3) ������ ��������� ������������� WLS"
    $command= Read-Host "������� �����: "
	if ($command -eq 1) {
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
		dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
		wsl.exe --set-default-version 2
		Restart-Computer
		Write-Host "������������ ���������..."
    }
    if ($command -eq 2) {
        wsl --install
    }
    if ($command -eq 3) {
        wsl --list --online
    }
}
