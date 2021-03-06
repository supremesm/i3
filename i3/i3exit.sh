#!/bin/sh
lock() {
    #i3lock -c 222222
    ~/.config/i3/i3lock-fancy-multimonitor/lock
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        #lock && systemctl supend
        systemctl supend
        ;;
    hibernate)
        #lock && systemctl hibernate
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
