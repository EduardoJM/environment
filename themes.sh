#
# Theme
#
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -c Dark -c Light -t all --dest "/home/eduardo/.themes"
cd ..
rm -rf WhiteSur-gtk-theme

#
# Icons
#
mkdir "/home/eduardo/.icons"
git clone https://github.com/zayronxio/Mkos-Big-Sur.git
mv -f ./Mkos-Big-Sur /home/eduardo/.icons/Mkos-Big-Sur

