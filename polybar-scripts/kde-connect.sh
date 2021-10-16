#!/usr/bin/env bash

while true; do
    qdbus org.kde.kdeconnect /modules/kdeconnect/devices/723d16dd517898bc/battery org.kde.kdeconnect.device.battery.charge
	sleep 30
done
