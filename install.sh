#!/bin/bash
# For OS X-based systems.

clear
echo "Installing all Powerline Fonts onto your Mac"
echo "Downloading the fonts..."
cd ~/Documents/
curl -L https://github.com/powerline/fonts/tarball/master -o master.tar.gz
echo "Extracting the fonts..."
mkdir -p powerline-fonts/fonts
tar -zxf master.tar.gz -C powerline-fonts/fonts
cd powerline-fonts
cd fonts
find . -mindepth 2 -type f -print -exec mv {} . \;
rm -R -- */
rm *.txt
rm *.rst
rm *.markdown
rm *.json
rm *.jpg
rm *.png
rm *.csv
rm *.bdf
rm *.md
rm *.html
rm *.py
rm *.conf
rm *.pcf.gz
rm *.psf.gz
rm *.sh
rm *.ps1
rm AUTHORS
rm CONTRIBUTORS
rm README
rm LICENSE
cd ..
mv fonts/* /Library/Fonts/

echo "Fonts installed; Cleaning up files..."
cd ~/Documents/
rm -f master.tar.gz
rm -rf powerline-fonts
echo "All done! All Powerline Fonts installed."
