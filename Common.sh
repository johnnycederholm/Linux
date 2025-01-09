NC='\033[0m'
Black='\033[0;30m'
Red='\033[0;31m' 
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
White='\033[0;37m'

makeScriptsExecutable() {
    echo "Make scripts executable..."
    find ./ -maxdepth 5 -type f -name \*.sh -exec chmod --changes +x {} \;
    find ./ -maxdepth 5 -type f -name \*.ps1 -exec chmod --changes +x {} \;
}

reboot () { 
    echo 'Reboot? (y/n)' && read x && [[ "$x" == "y" ]] && /sbin/reboot; 
}

info () {
    echo -e "${Green}$1${NC}"
}