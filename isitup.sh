#!/bin/bash

webserv="192.168.2.15:8123"

Keyword="Downstairs" # enter the keyword for test content

if curl -s "$webserv" | grep "$keyword"
then
    # if the keyword is in the conent
    echo " the website is working fine"
else
    systemctl restart home-assistant.service
fi
