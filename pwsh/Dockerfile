FROM ubuntu:20.04

WORKDIR /home

RUN sudo apt update && sudo apt -y install wget

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

RUN sudo dpkg -i packages-microsoft-prod.deb

RUN sudo apt update && sudo apt -y install powershell

RUN rm -rf packages-microsoft-prod.deb
