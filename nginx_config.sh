#!/bin/bash

#verificare permisiuni

if [ "$(id -u)" != "0" ];
then
echo "Err: ruleaza scriptul cu sudo"
	exit 1;
fi

#actualizare pachete
if ! apt update; then
	echo "instalarea a esuat"
exit 1;
fi	
