#!/bin/sh
# SuperUser Check
#if [ $EUID -ne 0 ]; then
#  echo -e "\\033[31mAborted, please execute the script as root.\\033[0m"; exit 1
#fi
# ============================================================ #
# ====================== < Main Code > ======================= #
# ============================================================ #
#Banner
banner(){                                                                                                                                         #Ascii Art style @https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
printf "\e[0m\e[93m                                     _____          __ ____  ___                                                      \e[0m\n"
printf "\e[0m\e[93m                                    /  _  \ _______/  |\   \/  /                                                      \e[0m\n"
printf "\e[0m\e[93m                                   /  /_\  \\____ \   __\     /                                                       \e[0m\n"
printf "\e[0m\e[93m                                  /    |    \  |_> >  | /     \                                                       \e[0m\n" #Grafiti
printf "\e[0m\e[93m                                  \____|__  /   __/|__|/___/\  \                                                      \e[0m\n"
printf "\e[0m\e[93m                                          \/|__|             \_/                                                      \e[0m\n"
printf "\e[0m\e[93m                                             ____  _  _                                                               \e[0m\n"
printf "\e[0m\e[93m                                            (  _ \( \/ )                                                              \e[0m\n"
printf "\e[0m\e[93m                                             ) _ < \  /                                                               \e[0m\n" #Bulbhead
printf "\e[0m\e[93m                                            (____/ (__)                                                               \e[0m\n" 
printf "\e[0m\e[93m                               _____ _ _         _ _ _     _ ___ __ __                                                \e[0m\n"
printf "\e[0m\e[93m                              |  _  | |_|___ ___| | | |___| |  _|  |  |                                               \e[0m\n" 
printf "\e[0m\e[93m                              |     | | | -_|   | | | | . | |  _|-   -|                                               \e[0m\n" #Rectangles 
printf "\e[0m\e[93m                              |__|__|_|_|___|_|_|_____|___|_|_| |__|__|                                               \e[0m\n"
printf "\e[0m\e[93m                                github: https://github.com/AlienWolfX                                                 \e[0m\n"
echo
}
# 01
kali_default(){
    sudo apt-get install kali-linux-default
    clear
    menu
}
#02
kali_arm(){
    sudo apt-get install kali-linux-arm
    clear 
    menu
}
#03
kali_core(){
    sudo apt-get install kali-linux-core
    clear 
    menu
}
#04
kali_light(){
    sudo apt-get install kali-linux-light
    clear 
    menu
}
#05
kali_nethunter(){
    sudo apt-get install kali-linux-nethunter
    clear 
    menu
}
#06
kali_update(){
    sudo apt-get update
    clear
    menu 
}
#07
kali_upgrade(){
    sudo apt-get upgrade
    clear
    menu
}
#08

#Main Menu
#-------------------------------------------------------------------------------------------------------------
menu(){
clear
sleep 1
banner
printf "\033[1;93m         System                                                                                                              \e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Install Kali-Default: \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Install Kali-Arm  \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Install Kali-Core  \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m Install Kali-Light \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m05\e[0m\e[1;31m]\e[0m\e[1;93m Install Kali-Nethunter(For supported android only) \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m06\e[0m\e[1;31m]\e[0m\e[1;93m Update kali Respository  \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m07\e[0m\e[1;31m]\e[0m\e[1;93m Upgrade kali  \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m08\e[0m\e[1;31m]\e[0m\e[1;93m Install  \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m09\e[0m\e[1;31m]\e[0m\e[1;93m Install  \e[0m\n"
echo #For Spacing
printf " \e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;93m Exit \e[0m\n"
echo #For Spacing
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' menu_option
if [[ $menu_option == 1 || $menu_option == 01 ]]; then
kali_default
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
kali_arm
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
kali_core
elif [[ $menu_option == 4 || $menu_option == 04 ]]; then
kali_light
elif [[ $menu_option == 5 || $menu_option == 05 ]]; then
kali_nethunter
elif [[ $menu_option == 6 || $menu_option == 06 ]]; then
kali_update
elif [[ $menu_option == 7 || $menu_option == 07 ]]; then
kali_upgrade
elif [[ $menu_option == 8 || $menu_option == 08 ]]; then
echo null
elif [[ $menu_option == 9 || $menu_option == 09 ]]; then
echo null
elif [[ $menu_option == 0 || $menu_option == 00 ]]; then
printf "\e[0m\n"
printf " \e[0m\e[1;31m Thanks for Using This Tool !!\e[0m  \e[1;31m Visit https://github.com/AlienWolfX for more\e[0m\n"
printf "\e[0m\n"
exit 1
else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
clear
menu
fi
}
menu

