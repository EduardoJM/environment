sudo apt-get -y install wget gpg
#
# Add some repositories
#
sudo add-apt-repository -y ppa:ricotz/docky
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt-get -y install apt-transport-https
sudo apt-get -y update

#
# Git
#
sudo apt-get -y install git

#
# Node.js
#
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get -y install nodejs
sudo npm install -g yarn
sudo npm install -g http-server

#
# Chrome
#
sudo apt-get -y install google-chrome-stable

#
# Plank
#
sudo apt-get -y install plank

#
# Docker
#
sudo apt-get -y install docker.io docker-compose

#
# Code
#
sudo apt-get -y install code

#
# Gimp
#
sudo apt-get -y install gimp

#
# Inkscape
#
sudo apt-get -y install inkscape

#
# Other Utils
#
sudo apt-get -y install simplescreenrecorder
sudo apt-get -y install python3-pip python3-dev libpq-dev libcurl4-gnutls-dev librtmp-dev
pip3 install virtualenv

./utils/font.sh
./utils/vscode.sh
