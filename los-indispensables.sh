#!/bin/bash
#
# Este script reune las herramientas que usualmente necesitamos
# para el desarrollo del equipo de materiagris
#
while :
do
echo ""
echo "Escoge una opcion"
echo ""
echo "1.- actulizar e instalar herremientas necesarias"
echo "2.- Instalar sam cli"
echo "3.- Instalar aws cli"
echo "4.- Instalar dotnet8 y sdk"
echo "5.- Instalar node 20v"
echo "6.- Instalar terraform"
echo "7.- Instalar todo lo anterior"
echo "0.- Cero, Salir del script"
echo ""

echo -n "Su opción elegida es el número => "

read opcion
case $opcion in
 
1) echo "ACTULIZAR E INSTALR HERRAMIENTAS"
apt update -y
apt install unzip vim wget curl git -y

;;

2) echo "INSTALACION DE SAM CLI"
echo "INSTALACION DE SAM CLI"
echo "---------------------------"
wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
./sam-installation/install
echo "---------------------------"
echo "SAM VERSION INSTALADO      "
sam --version
echo "---------------------------"
echo "                           "

;;

3) echo "INSTALACION DE AWS CLI"
echo "---------------------------"
echo "INTALACION DE AWS CLI"
echo "---------------------------"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
bash ./aws/install
echo "----------------------------"
echo "VERSION INSTALADA DE AWS CLI"
aws --version
echo "---------------------------"
echo "                           "

;;

4) echo "INSTALACION DE DOTNET8 MAS SDK"
echo "------------------------------"
echo "INATALACION DE DOTNET8 MAS SDK"
echo "------------------------------"
apt install dotnet-sdk-8.0 -y
echo "------------------------------"
echo "VERSION DE DOTNET INSTALADO   "
dotnet --version
echo "------------------------------"

;;

5) echo "INSTALACION DE NODE 20v"
echo "INSTALACION DE NODE VERSION 20"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # esto carga el nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # esto ayuda a cargar el nvm y bash_completion

nvm install 20
echo "------------------------------"
echo "VERSION DE NODE INSTALADO     "
node -v
npm -v
echo "------------------------------"

;;

6) echo "INSTALACION DE TERRAFORM"
echo "INSTALACION DE TERRAFORM      "
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
apt update -y && apt install terraform -y
echo "------------------------------"
echo "VERSION DE TERRAFORM INSTALADO"
terraform --version
echo "------------------------------"

;;

7) echo "Instalar todo"
echo "INSTALACION DE SAM CLI"
echo "---------------------------"
wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
./sam-installation/install
echo "---------------------------"
echo "SAM VERSION INSTALADO      "
sam --version
echo "---------------------------"
echo "                           "

echo "---------------------------"
echo "INTALACION DE AWS CLI"
echo "---------------------------"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
bash ./aws/install
echo "----------------------------"
echo "VERSION INSTALADA DE AWS CLI"
aws --version
echo "---------------------------"
echo "                           "

echo "------------------------------"
echo "INATALACION DE DOTNET8 MAS SDK"
echo "------------------------------"
apt install dotnet-sdk-8.0 -y
echo "------------------------------"
echo "VERSION DE DOTNET INSTALADO   "
dotnet --version
echo "------------------------------"

echo "INSTALACION DE NODE VERSION 20"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # esto carga el nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # esto ayuda a cargar el nvm y bash_completion

nvm install 20
echo "------------------------------"
echo "VERSION DE NODE INSTALADO     "
node -v
npm -v
echo "------------------------------"

echo "INSTALACION DE TERRAFORM      "
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
apt update -y && apt install terraform -y
echo "------------------------------"
echo "VERSION DE TERRAFORM INSTALADO"
terraform --version
echo "------------------------------"

;;

0) echo "SALIR DEL SCRIPT" ; exit 0

esac
done