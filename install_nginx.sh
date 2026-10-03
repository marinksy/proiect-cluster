#script dedicat UBUNTU#
apt update
apt install -y nginx
systemctl enable --now nginx

echo "verificare status" 
systemctl status nginx
