# Пример бесконечного цикла
while ($true) {
    Write-Host "1) Установка WLS (Будет Перезагрузка Компютера)"
	Write-Host "2) Установка WLS (Автоматически Установит Ubuntu)"
    Write-Host "3) Список Доступных Дистрибутивов WLS"
    $command= Read-Host "Выбрать Номер: "
	if ($command -eq 1) {
        dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
		dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
		wsl.exe --set-default-version 2
		Restart-Computer
		Write-Host "Перезагрузка Компютера..."
    }
    if ($command -eq 2) {
        wsl --install
    }
    if ($command -eq 3) {
        wsl --list --online
    }
}
