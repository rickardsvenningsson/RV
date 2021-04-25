#!/bin/bash

sudo -- bash -c 'echo -e "HTTP/1.1 200 OK\r\nSuccessful" | nc -lN 81; reboot'&
sudo -- bash -c 'echo -e "HTTP/1.1 200 OK\r\nSuccessful" | nc -lN 82; shutdown -h now'&

while [[ $(nc -zv homassistant.local 8123 2>&1) != *"succeeded"* ]]; do
   sleep 10;
done

chromium-browser -kiosk file:///home/pi/RV/html/index.html
