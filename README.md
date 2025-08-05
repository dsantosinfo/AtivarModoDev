# Script para Ativação do Modo de Desenvolvedor no Windows

Este repositório contém um script PowerShell simples e eficaz para habilitar ou desabilitar o "Modo de Desenvolvedor" no Windows 10 e Windows 11.

## 📝 Descrição

O Modo de Desenvolvedor é uma configuração do Windows que permite a instalação de aplicativos de qualquer origem (processo conhecido como *sideloading*), além de oferecer outras ferramentas e permissões para teste e desenvolvimento de software.

Este script automatiza o processo de ativação, que de outra forma exigiria navegação manual pelas configurações do sistema. É particularmente útil para resolver erros de implantação de pacotes `UWP` (como em launchers de jogos) ou para preparar um ambiente para desenvolvimento.

## ✅ Requisitos

* Windows 10 ou Windows 11
* Windows PowerShell
* **Privilégios de Administrador** para executar o script

## 🚀 Como Usar

Para que o script funcione, ele **obrigatoriamente** precisa ser executado com permissões de Administrador, pois ele modifica uma chave do Registro do sistema.

1.  **Baixe o Script:**
    Faça o download do arquivo `AtivarModoDev.ps1` deste repositório.

2.  **Execute como Administrador (Método Recomendado):**
    a. Abra o Menu Iniciar e pesquise por **"PowerShell"**.
    b. Clique com o botão direito do mouse em "Windows PowerShell" e selecione **"Executar como administrador"**.
    c. Na janela do PowerShell que se abrir, navegue até a pasta onde você salvou o script. Por exemplo, se ele estiver na sua Área de Trabalho:
    ```powershell
    cd $HOME\Desktop
    ```
    d. Execute o script digitando:
    ```powershell
    .\AtivarModoDev.ps1
    ```

3.  **Confirmação:**
    Ao final da execução, uma mensagem de sucesso será exibida. É recomendado reiniciar o computador para que as alterações sejam aplicadas em todo o sistema.

## ⚙️ O Que o Script Faz?

O script realiza uma única e específica alteração no Registro do Windows para ativar o Modo de Desenvolvedor.

Ele define o valor da seguinte chave `DWORD` como `1` (ativado):

-   **Caminho:** `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock`
-   **Nome do DWORD:** `AllowDevelopmentWithoutDevLicense`

O script é seguro, pois apenas altera este valor específico.

## ⚠️ Aviso

Este script modifica o Registro do Windows. Embora a alteração seja simples e segura, o autor não se responsabiliza por quaisquer problemas que possam surgir no seu sistema. Use por sua conta e risco.
