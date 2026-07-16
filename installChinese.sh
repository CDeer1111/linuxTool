#!/bin/bash
set -e

sudo apt update

sudo apt install -y fonts-arphic-uming \
fonts-noto-cjk \
fcitx5 \
fcitx5-configtool \
fcitx5-chewing \
zenity \
im-config

im-config -n fcitx5


echo "安裝完成。是否重新開機？ (y/N)"
read -r answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
    sudo reboot
else
    echo "請稍後手動重新開機以啟用輸入法。"
fi
