#!/bin/bash

clear

echo -e "\e[1;32m"
echo "  _____ _____"
echo " / ____|_   _|"
echo "| (___   | |"
echo " \___ \  | |"
echo " ____) | | |"
echo "|_____/  |_|"
echo ""
echo " SUPER TERMUX"
echo -e "\e[0m"
echo -e "\033[1;31m==============================\033[0m"
echo -e "\033[1;31m        ⚠️ WARNING ⚠️\033[0m"
echo -e "\033[1;31m==============================\033[0m"

echo -e "\033[1;33mThis tool is only for educational purposes.\033[0m"
echo -e "\033[1;33mDo NOT use for illegal or harmful activities.\033[0m"
echo ""

echo -ne "\033[1;32mDo you agree? (yes/no): \033[0m"
read agree

if [[ $agree != "yes" ]]; then
    echo -e "\033[1;31mExiting... Stay safe.\033[0m"
     
   exit
fi

clear

while true
do

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
RESET='\033[0m'

echo -e "\e[1;32m"
echo "  _____ _____"
echo " / ____|_   _|"
echo "| (___   | |"
echo " \___ \  | |"
echo " ____) | | |"
echo "|_____/  |_|"
echo ""
echo " SUPER TERMUX"
echo -e "\e[0m"

    echo -e "${CYAN}==============================${RESET}"
    echo "   D3C0D3D_191 Tool Menu " | lolcat
    echo -e "${CYAN}==============================${RESET}"
    echo -e "\033[1;31m⚠️ WARNING:\033[0m"
    echo -e "\033[1;33mThis tool is made for EDUCATIONAL and ETHICAL purposes only.\033[0m"
    echo -e "\033[1;33mDo not use it for illegal activities.\033[0m"
    echo ""
    echo -e "${GREEN}1.${BLUE} Install Ubuntu${RESET}"
    echo -e "${GREEN}2.${BLUE} Install Debian${RESET}"
    echo -e "${GREEN}3.${BLUE} Install Archlinux${RESET}"
    echo -e "${GREEN}4.${BLUE} Install Alpine${RESET}"
    echo -e "${YELLOW}0. Exit${RESET}"
    echo "=============================="
    echo -ne "${GREEN}Enter your choice: ${RESET}"
    read choice

    case $choice in

        1)
            echo -e "${GREEN}[✓]Installing Ubuntu...${RESET}"
            pkg update && pkg upgrade -y
            pkg install proot-distro -y
            proot-distro install ubuntu
            proot-distro login ubuntu
            ;;

        2)
            echo -e "${GREEN}[✓]Installing Debian...${RESET}"
            pkg update && pkg upgrade -y
            pkg install proot-distro -y
            proot-distro install debian
            proot-distro login debian
            ;;

        3)
            echo -e "${GREEN}[✓]Installing Archlinux... ${RESET}"
            pkg update && pkg upgrade -y
            proot-distro install archlinux
            proot-distro login archlinux
            ;;
        4)
            echo -e "${GREEN}[✓]Installing Alpine...${RESET}"
            pkg update && pkg upgrade -y
            proot-distro install alpine
            proot-distro login alpine
            ;;

        0)
            echo -e "${RED}Exiting tool...${RESET}"
            break
            ;;

        *)
            echo -e "${RED}Invalid option! Try again.${RESET}"
            ;;
    esac

    echo ""
    echo -ne "${YELLOW}Press Enter to continue...${RESET}"
    read
    clear
done
