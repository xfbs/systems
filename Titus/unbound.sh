sudo apt install unbound
sudo systemctl disable systemd-resolved
echo "nameserver 127.0.0.1" > /etc/resolv.conf
