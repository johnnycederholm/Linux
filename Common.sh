reboot () { 
    echo 'Reboot? (y/n)' && read x && [[ "$x" == "y" ]] && /sbin/reboot; 
}