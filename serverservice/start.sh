#!/bin/bash

sudo -- bash -c 'echo -e "HTTP/1.1 200 OK\r\nSuccessful" | nc -lN 81; reboot.sh'&
sudo -- bash -c 'echo -e "HTTP/1.1 200 OK\r\nSuccessful" | nc -lN 82; shutdown.sh'&

