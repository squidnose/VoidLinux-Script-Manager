#!/bin/bash
#whiptale check+git:
sudo xbps-install -Syu xbps
sudo xbps-install -Sy git dialog newt
# --- Functions to be executed ---

run_script_1() {
    echo "Runing and Installing Latest Version of:"
    echo "Voidlinux-Post-Install-TUI by squidnose"
    rm -rf Voidlinux-Post-Install-TUI
    git clone https://github.com/squidnose/Voidlinux-Post-Install-TUI.git
    cd Voidlinux-Post-Install-TUI
    chmod +x Void-post-install-script.sh
    ./Void-post-install-script.sh
}

run_script_2() {
    echo "Runing and Installing Latest Version of:"
    echo "void-install-script by kkrruumm"
    rm -rf void-install-script
    git clone https://github.com/kkrruumm/void-install-script.git
    cd void-install-script
    sudo ./viss

}

run_script_3() {
    echo "Runing Cached Version of:"
    echo "Voidlinux-Post-Install-TUI by squidnose"
    cd Voidlinux-Post-Install-TUI
    ./Void-post-install-script.sh
}

run_script_4() {
    echo "Runing Cached Version of:"
    echo "This is where you would place the commands for option 3."
    cd void-install-script
    sudo ./viss
}

run_script_5() {
    echo "Runing Void-installer:"
    sudo void-installer

}

# --- Main menu logic ---
# Create the whiptail menu
# The '3>&1 1>&2 2>&3' redirects the output of whiptail, so we can capture the selected item.
#the 1. number is hight 2. number is width and 3. number is menu items before it enables scroll
CHOICE=$(whiptail --title "TUI Menu" --menu "Choose an option:" 15 90 6 \
"1" "Download Latest Version of: Voidlinux-Post-Install-TUI by squidnose" \
"2" "Download Latest Version of: void-install-script by kkrruumm" \
"3" "Run Cached Version of: Voidlinux-Post-Install-TUI by squidnose" \
"4" "Run Cached Version of: void-install-script by kkrruumm" \
"5" "Run normal void-installer (Live system only)" \
"Exit" "Exit the script"  3>&1 1>&2 2>&3)

# Check the user's selection and run the corresponding function
case $CHOICE in
    1)
        run_script_1
        ;;
    2)
        run_script_2
        ;;
    3)
        run_script_3
        ;;
    4)
        run_script_4
        ;;
    5)
        run_script_5
        ;;
    Exit)
        echo "Exiting."
        exit 0
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo "Script finished."

