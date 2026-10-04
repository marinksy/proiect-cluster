#!/bin/bash
#script dedicat UBUNTU#

set -u

#verificare permisiuni

if [ "$(id -u)" != "0" ];
then
echo "Err: ruleaza scriptul cu sudo"
	exit 1;
fi

#actualizare pachete
if ! apt update; then
	echo "Actualizarea a esuat"
exit 1;
fi


if ! apt install -y nginx; then
	echo "eroare la instalare"
exit 1;
fi

if !  systemctl enable --now nginx; then
echo "nginx e inactiv, n-a fost de succes activarea activarea"
exit 1;
fi

echo "verificare status" 
 systemctl status nginx 
