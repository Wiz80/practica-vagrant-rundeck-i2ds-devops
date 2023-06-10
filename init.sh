#!/bin/bash

# Actualiza los paquetes del sistema
sudo apt-get update
sudo apt-get upgrade -y

# Instala Java
sudo apt-get install -y openjdk-11-jre-headless

# Importa la clave del repositorio de Rundeck
curl -L https://packages.rundeck.com/pagerduty/rundeck/gpgkey | sudo apt-key add -

# Añade el repositorio de Rundeck a tu lista de fuentes de paquetes
echo "deb https://packages.rundeck.com/pagerduty/rundeck/any/ any main" | sudo tee /etc/apt/sources.list.d/rundeck.list
echo "deb-src https://packages.rundeck.com/pagerduty/rundeck/any/ any main" | sudo tee -a /etc/apt/sources.list.d/rundeck.list

# Actualiza la caché de apt y instala Rundeck
sudo apt-get update
sudo apt-get install -y rundeck

# Inicia el servicio de Rundeck
sudo systemctl start rundeckd

# Habilita el servicio de Rundeck para que se inicie automáticamente en el arranque
sudo systemctl enable rundeckd

# Verifica la instalación
tail -f /var/log/rundeck/service.log
