#!/bin/bash

if [ "$1" == "set" ]; then
	 adb shell settings put global http_proxy 172.17.0.1:8080

elif [ "$1" == "unset" ]; then
    adb shell settings put global http_proxy :0
else
    echo "Usage: $0 {set|unset}"
fi
