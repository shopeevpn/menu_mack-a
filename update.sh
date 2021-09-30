#!/bin/bash
Font_Red="\033[31m";
Font_Green="\033[32m";
Font_Yellow="\033[33m";
Font_Blue="\033[34m";
Font_Purple="\033[35m";
Font_SkyBlue="\033[36m";
Font_White="\033[37m";
Font_Suffix="\033[0m";
clear
echo -e ""
echo -e "${Font_Red}   Update Menu untuk Script v2ray-agent MACK-A v2ray core by RARE.${Font_Suffix}"
echo -e ""
echo -e "   ============================================="
echo -e "      Sila Masukkan DOMAIN (domain.anda.com) "
echo -e "   ============================================="
read -p "      Hostname / Domain: " domain
echo -e "   ============================================="
echo -e "         Sila Masukkan path anda tanpa / (v2ray) "
echo -e "   ============================================="
read -p "             PATH: " path
echo -e "   ============================================="
apt install bc
# Install tools
apt install -y net-tools vnstat unzip curl screen
apt install jq bc netfilter-persistent -y
apt-get --reinstall --fix-missing install -y neofetch
echo "clear" >> .profile
echo "neofetch --ascii_distro SliTaz" >> .profile
echo "echo -e '\e[35m Credit to mack-a \e[0m'" >> .profilee
echo "echo ''" >> .profile
echo "echo -e '\e[35m  Type\e[5m \e[32mmenu\e[0m \e[35mUntuk Melihat Menu V2ray anda \e[0m'" >> .profile
echo "echo ''" >> .profile
touch /etc/v2ray-agent/v2ray/clients.txt
echo "$domain" >> /root/domain
echo "/${path}ws" >> /root/pathws
echo "/${path}vws" >> /root/pathvws
rm /etc/v2ray-agent/v2ray/conf/00_log.json
cat <<EOF > /etc/v2ray-agent/v2ray/conf/00_log.json
{
  "log": {
    "access": "/etc/v2ray-agent/v2ray/access.log",
    "error": "/etc/v2ray-agent/v2ray/error.log",
    "loglevel": "warning"
  }
}
EOF
cd /usr/bin
# menu
wget -O menu "https://raw.githubusercontent.com/shopeevpn/menu_mack-a/main/menu.sh"
chmod +x menu
cd
echo -e ""
echo -e ""
echo -e "         MENU UPDATE SELESAI"
echo -e ""
rm /root/update.sh
