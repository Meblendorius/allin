#!/bin/bash

echo "MX";
dig mx $* +short;
echo "";
echo "Servidor";
whois $* | grep -E 'nserver|status';
echo "";
echo "Ambiente";
ping -c 1 webmail.$* | grep PING
