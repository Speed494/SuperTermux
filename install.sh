GREEN='\033[1;92m'
RED='\033[1;91m'
BLUE='\033[1;94m'
RESET='\033[0m'

ping -c 1 google.com >/dev/null 2>&1
if [ "$?" != '0' ]; then
  printf "Internet on karlo please!!\n"
  exit 1
fi 

echo -e "${BLUE}[*]Installing Ruby${RESET}"
pkg install ruby||{
echo -e "${RED}[✗]Downloading Failed${RESET}"
exit 1
}
echo -e "${BLUE}[*]Installing Lolcat${RESET}"
gem install lolcat ||{
echo -e "${RED}[✗]Downloading Failed${RESET}" 
exit 1
}
echo -e "${GREEN}Downloading Complete${RESET}"

chmod +x *.sh
./supertermux.sh
