#!/bin/bash

echo -e "HTTP/1.1 200 OK\r\nSuccessful" | nc -lN 81; reboot &
