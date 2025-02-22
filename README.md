# Neovim - uma IDE leve e extremamente customizável
Veja você mesmo: https://neovim.io/

### Objetivo
Esse repositório foi desenvolvido com intuito de se ter uma IDE que atenda as necessidades do desenvolvedor, além de ter um gostinho de "liberdade" e "leveza" por conta do dev poder deixa-la da maneira como bem entender.

### Multiplataforma
Windows 🆗
Linux 🆗
MacOS 🆗

### Ferramentas
`Scoop / Chocolatey, Nodejs, git, GCC, llvm, MinGW, vim e neovim`

# OBS
As informações deste README são mais focadas em Windows e Linux, não sou rico para falar o passo a passo do MacOS 😒

## Scoop - Windows:
`Scoop: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser; Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression`

Aguarde o download completar. Feito isso, cheque se o scoop já está rodando na sua máquina com:
`scoop -v`

Com o Prompt retornando sua versão, instale as ferramentas abaixo:
`scoop install llvm; scoop install mingw`

Qualquer dúvida, cheque a documentação: https://scoop.sh/

## Linux
GCC, llvm, git e outras ferramentas no Linux não precisam de instaladores como scoop, dependendo da Distro que o dev utilize, apenas rode o comando:
`sudo apt update
sudo apt install git build-essential cmake git pkg-config libtool g++ libunibilium4 libunibilium-dev \
ninja-build gettext libtool libtool-bin autoconf automake unzip curl doxygen lua-term lua-term-dev luarocks`

Dependendo da sua Distro, talvez seja outro comando, mas qualquer uma que seja base Debian, irá funcionar

## Nodejs - Windows
Plataforma: https://nodejs.org/pt e faça o download

Feito isso instale o programa, porém preste atenção no path que ele será instalado, pois dependendo o dev precise ir até sua pasta raiz no futuro para realizar configurações manuais

## Nodejs - Linux
Apenas rode o comando:
`sudo apt install nodejs`

Dependendo da sua Distro, pode ser outro comando

## Git - Windows
Plataforma: https://git-scm.com/
Faça o download e instale o mesmo

## Vim - Windows
Plataforma: https://www.vim.org/

Faça o download da versão de acordo com seu computador (64x ou 32x)

# OBS
Recomendo que deixe o no path `C:\vim` pois vai ser necessário pegar o seu diretório e aplicar nas `Variáveis de Ambiente do Sistema`.
Com a instalação finalizada, cole o path e insira nas Variáveis de Ambiente, com isso seu vim no windows está instalado

## Vim - Linux
Apenas rode o comando:
`sudo apt install vim`

Dependendo da sua Distro, pode ser outro comando ou o mesmo já pode vir instalado

## Neovim - Windows
Seu computador sendo Windows 10 / Windows 11, rode o comando no `Windows Terminal`:
`winget install Neovim.Neovim`

Feito isso, apenas rode: `nvim`

## Neovim - Linux
Faça o clone do projeto:
`git clone https://github.com/neovim/neovim.git`

Entre na pasta:
`cd neovim`

E rode o comando:
`make CMAKE_BUILD_TYPE=RelWithDebInfo`
Aguarde o processo finalizar

Agora para finalizar rode:
`sudo make install`

Talvez precise fechar o Terminal. Depois apenas rode: `nvim`

Feito isso, basta clonar o projeto e fazer bom uso da sua IDE

# OBS
`Esse Neovim não contém todos os plugins e features existentes! Tudo vai depender do workflow de cada desenvolvedor`
