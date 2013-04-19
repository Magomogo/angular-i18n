#!/bin/bash
VER=$1
echo "Downloading $VER:";
wget -q -O - http://code.angularjs.org/$VER/i18n/ | grep -o -e "\"angular-locale_[^\"]*\.js" | sed "s/^\"/http:\/\/code.angularjs.org\/$VER\/i18n\//" | xargs wget
