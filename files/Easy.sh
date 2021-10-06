#!/bin/sh
# ============================================================ #
# ================= < CODES > ================= #
# ============================================================ #
#Banner
#-------------------------------------------------------------------------------------------------------------
banner(){
printf "\e[0m\n"
printf "\e[0m\e[93m ____    __    ___  _  _    ___   ___  ____  ____  ____  ____ \e[0m\n"
printf "\e[0m\e[93m( ___)  /__\  / __)( \/ )  / __) / __)(  _ \(_  _)(  _ \(_  _)\e[0m\n"
printf "\e[0m\e[93m )__)  /(__)\ \__ \ \  /   \__ \( (__  )   / _)(_  )___/  )(  \e[0m\n"
printf "\e[0m\e[93m(____)(__)(__)(___/ (__)   (___/ \___)(_)\_)(____)(__)   (__) By AlienWolfX\e[0m\n"
printf "\e[0m\e[93m============================================================================================================\e[0m\n"
printf "\e[0m\e[93mGithub: https://github.com/AlienWolfX\e[0m\n"
printf "\e[0m\e[93mFacebook: https://www.facebook.com/allengabriellecruiz/\e[0m\n"
printf "\e[0m\e[93mYouTube: https://www.youtube.com/channel/UCg-qijzRZDRM7-CB7EFUy5A\e[0m\n"
printf "\e[0m\e[93mMade In the Philippines :D\e[0m\n"
printf "\e[0m\e[93m============================================================================================================\e[0m\n"
printf "\e[0m\n"
}
#About
#-------------------------------------------------------------------------------------------------------------
abt(){
clear
sleep 1
banner
echo -e "\e[1;32m This script is created to easily start services, update alternatives and change session manager  \e[0m"
printf " \e[0m\e[91m[\e[0m00\e[0m\e[91m]\e[0m\e[93m Home           \e[0m\e[91m[\e[0m99\e[0m\e[91m]\e[0m\e[93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' about_option

if [[ $about_option == 0 || $about_option == 00 ]]; then
sleep 1
clear
menu
elif [[ $about_option == 99 ]]; then
sleep 1
printf "\e[0m\n"
printf " \e[0m\e[1;31m Thanks for Using This Tool !!\e[0m  \e[1;31m Visit https://github.com/AlienWolfX for more\e[0m\n"
printf "\e[0m\n"
clear
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
clear
menu
fi
}
#Alternative
#-------------------------------------------------------------------------------------------------------------
alt(){
clear
sleep 1
banner
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Java 8\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Java 11\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Back\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' man_option
if [[ $man_option == 1 || $man_option == 01 ]]; then
	if sudo update-alternatives --set java /usr/lib/jvm/jdk1.8.0_291/bin/java ; then
        			echo -e "\e[1;32m Success \e[0m"
        			sleep 2
        			clear
        			menu
         		else
        			echo -e "\e[1;31m Failed \e[0m"
        			sleep 2
        			clear
        			menu
        fi
elif [[ $man_option == 2 || $man_option == 02 ]]; then
	if sudo update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java ; then
        			echo -e "\e[1;32m Success \e[0m"
        			sleep 2
        			clear
        			menu
        		else
        			echo -e "\e[1;31m Failed \e[0m"
        			sleep 2
        			clear
        			menu
        fi
elif [[ $man_option == 3 || $man_option == 03 ]]; then
sleep 1
clear
menu	
else
printf "\n\n  \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
clear
alt
fi
}
#Manager
#-------------------------------------------------------------------------------------------------------------
manager(){
clear
sleep 1
banner
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Gnome\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Xfce\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Back\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' man_option
if [[ $man_option == 1 || $man_option == 01 ]]; then
	if sudo update-alternatives --set x-session-manager /usr/bin/gnome-session ; then
        			echo -e "\e[1;32m Success \e[0m"
        			sleep 2
        			clear
        			menu
         		else
        			echo -e "\e[1;31m Failed \e[0m"
        			sleep 2
        			clear
        			menu
        fi
elif [[ $man_option == 2 || $man_option == 02 ]]; then
	if sudo update-alternatives --set x-session-manager /usr/bin/xfce4-session ; then
        			echo -e "\e[1;32m Success \e[0m"
        			sleep 2
        			menu
         		else
        			echo -e "\e[1;31m Failed \e[0m"
        			sleep 2
        			clear
        			menu
        fi
elif [[ $man_option == 3 || $man_option == 03 ]]; then
menu
else
printf "\n\n  \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
clear
manager
fi
}
#Service
#-------------------------------------------------------------------------------------------------------------
start(){
clear
sleep 1
banner
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Bluetooth\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Network-manager\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Back\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' man_option
if [[ $man_option == 1 || $man_option == 01 ]]; then
	if sudo /etc/init.d/bluetooth start ; then
        		echo -e "\e[1;32m Success \e[0m"
        		sleep 2
        		clear
        		menu
        	else
        		echo -e "\e[1;31m Failed \e[0m"
        		sleep 2
        		clear
        		menu
        fi
elif [[ $man_option == 2 || $man_option == 02 ]]; then
	if sudo service NetworkManager start ; then  
			echo -e "\e[1;32m Success \e[0m"
			sleep 2
			clear
			menu
		else 
			echo -e "\e[1;31m Service not found \e[0m"
			sleep 2
			clear
			menu
	 fi
elif [[ $man_option == 3 || $man_option == 03 ]]; then
sleep 1
clear
menu	
else
printf "\n\n  \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
start
fi
}
#Main Menu
#-------------------------------------------------------------------------------------------------------------
menu(){
clear
sleep 1
banner
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Start a service    \e[0m\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Update Session-manager      \e[0m\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Update Alternatives	\e[0m\e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m About\e[0m\n"
printf "\e[0m\e[93m-------------------------------------------------------------------------------------------------------------\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Start a service    \e[0m\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Update Session-manager      \e[0m\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Update Alternatives	\e[0m\e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m About\e[0m\n"
printf "\e[0m\e[93m-------------------------------------------------------------------------------------------------------------\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;93m Exit"
echo
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' menu_option
if [[ $menu_option == 1 || $menu_option == 01 ]]; then
start
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
manager
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
alt
elif [[ $menu_option == 4 || $menu_option == 04 ]]; then
abt
elif [[ $menu_option == 0 || $menu_option == 00 ]]; then
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/AlienWolfX for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
clear
menu

fi
}
#-------------------------------------------------------------------------------------------------------------
menu