makeScriptsExecutable() {
    echo "Make scripts executable..."
    find ./ -maxdepth 5 -type f -name \*.sh -exec chmod --changes +x {} \;
    find ./ -maxdepth 5 -type f -name \*.ps1 -exec chmod --changes +x {} \;
}

reboot () { 
    echo 'Reboot? (y/n)' && read x && [[ "$x" == "y" ]] && /sbin/reboot; 
}

info () {
    NC='\033[0m'
    Green='\033[0;32m'

    echo -e "${Green}$1${NC}"
}