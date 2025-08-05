@echo off
:: =============================================================================
:: Script para Habilitar o Modo de Desenvolvedor no Windows
:: Requer execução como Administrador para modificar o Registro.
:: =============================================================================

echo.
echo Tentando ativar o Modo de Desenvolvedor...
echo.

:: Comando para adicionar/modificar a chave do Registro
:: A chave abaixo ativa o Modo de Desenvolvedor (sideloading)
:: /v: Nome do valor
:: /t: Tipo do valor (REG_DWORD)
:: /d: Dado do valor (1 para ativar)
:: /f: Forca a sobrescrita sem pedir confirmacao
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /v AllowDevelopmentWithoutDevLicense /t REG_DWORD /d 1 /f

:: Verifica se o comando anterior foi executado com sucesso
if %errorlevel%==0 (
    echo Modo de Desenvolvedor ativado com sucesso!
) else (
    echo FALHA: Ocorreu um erro. Verifique se voce executou o script como Administrador.
)

echo.
echo E recomendado reiniciar o computador para garantir que as alteracoes sejam aplicadas.
echo.
pause