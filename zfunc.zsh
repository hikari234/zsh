
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
###                            Shell Function
### +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

net () {
    sudo  ip link set wlan0 up
    sudo  wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
    sudo  dhcpcd
}
g () {
    g++ $1
    if [ $? -eq 0 ]; then
        echo "Compile Successfully!"
    else
        echo "Compilation Error"
    fi
    ./a.out
    if [ $? -eq 0 ]; then
        echo "Running Successfully!"
    else
        echo "Runtime Error"
    fi
}
d () {
    g++ $1.cc
    echo "Running..."
    ./a.out
}
nf () {
    neofetch --ascii "$(fortune | cowsay -W 50)"
}
scr () {
    scrot -s ~/screenshots/%Y-%m-%d-%T-screenshot.png
}
