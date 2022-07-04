mkdir downloaded-fonts && cd downloaded-fonts
curl -LO https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
unzip JetBrainsMono-2.242.zip
sudo mv ./fonts/ttf /usr/share/fonts/truetype/jetbrainsmono
cd ..
rm -rf downloaded-fonts
fc-cache -f -v
