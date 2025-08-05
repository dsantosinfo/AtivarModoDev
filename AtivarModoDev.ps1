# =============================================================================
# Script para Habilitar o Modo de Desenvolvedor no Windows
# Requer execução como Administrador para modificar o Registro.
# =============================================================================

# Define o caminho da chave do Registro
$RegistryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock"

# Define o nome da propriedade (DWORD)
$Name = "AllowDevelopmentWithoutDevLicense"

# Define o valor para 1 (1 = Ativado, 0 = Desativado)
$Value = 1

# Verifica se a chave do Registro já existe. Se não, ela será criada.
if (-not (Test-Path $RegistryPath)) {
    New-Item -Path $RegistryPath -Force | Out-Null
}

# Define o valor da propriedade do Registro para ativar o Modo de Desenvolvedor
# O parâmetro -Force garante que a propriedade seja criada se não existir
Set-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -Type DWord -Force

Write-Host ""
Write-Host "Modo de Desenvolvedor foi ativado com sucesso!" -ForegroundColor Green
Write-Host "É recomendado reiniciar o computador para que as alterações tenham efeito completo."
Write-Host ""
# Mantém a janela aberta por 10 segundos para que o usuário possa ler a mensagem.
Start-Sleep -Seconds 10