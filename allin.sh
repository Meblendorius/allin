#!/bin/bash

echo "MX";
dig mx $* +short;
echo "";
echo "Servidor";
whois $* | grep -E 'nserver|status';
echo "";
echo "Ambiente";
ping -c 1 webmail.$* | grep PING;
ping -c 1 pop.$* | grep POP;
ping -c 1 imap.$* | grep IMAP;
ping -c 1 smtp.$* | grep SMTP
