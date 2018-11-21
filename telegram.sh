#!/bin/bash

token='<<<<<<<<<<BOT_KEY>>>>>>>>'
chat="$1"
subj="$2"
message="$3"

/usr/bin/curl -s --socks5-hostname HOSTNAME_ORE_IP:PORT -U LOGIN:PASSWORD --header 'Content-Type: application/json' --request 'POST' --data "{\"chat_id\":\"${chat}\",\"text\":\"${subj}\n${message}\"}" "https://api.telegram.org/bot${token}/sendMessage"

