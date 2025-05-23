#!/bin/bash

if [ "$1" == "set" ]; then
#If the proxy refuses to work due to an IP address issue change the 172.17.0.1 below to one of the Ip addresses that shows up when you follow the instructions in the README.md
	 #adb shell settings put global http_proxy (One of the specific addresses in Burp):8080
     adb shell settings put global http_proxy 172.17.0.1:8080

elif [ "$1" == "unset" ]; then
    adb shell settings put global http_proxy :0
else
    echo "Usage: $0 {set|unset}"
fi
