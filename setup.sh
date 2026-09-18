sudo apt update
sudo apt install -y xrdp kali-desktop-xfce dbus-x11
echo "startxfce4" > ~/.xsession
chmod +x ~/.xsession
sudo tee /etc/xrdp/startwm.sh > /dev/null <<'EOF'
#!/bin/sh
unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR

if [ -r /etc/profile ]; then
    . /etc/profile
fi
if [ -r ~/.profile ]; then
    . ~/.profile
fi

exec startxfce4
EOF
sudo chmod +x /etc/xrdp/startwm.sh
