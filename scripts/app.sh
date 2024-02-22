#!/bin/bash

# this line installs curl on the Ubuntu server
sudo apt-get install curl -y
# this line downloads Node.js
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
# this line installs node
sudo apt install nodejs -y
# this line clones the project
git clone https://github.com/chukwukelu2023/azure-sdk.git
# go to the project directory
cd azure-sdk
#create .env
touch .env
#add .env variables
echo STORAGE_ACCOUNT_NAME=vmolustore >>.env
echo STORAGE_ACCOUNT_KEY= >>.env
echo STORAGE_ACCOUNT_CONNECTION_STRING="" >>.env
echo STORAGE_CONTAINER_NAME=uploadfile >>.env
#install npm
# install dependencies
npm install
# start your server
npm run start