To use Mobile Config script:
- Clone this project
- cd /android-config
- Run the command : "chmod +x mobileconfig.sh"
- Make sure you have created an android device on an emulator on your machine or you have connected a physical android phone
- Burpsuite must be opened and proxy settings on
- Run the command : "./mobileconfig.sh"
- Saves you the hassle of manually setting up the android device to capture traffic with burp

To use the Set Proxy script: This will help you proxy android traffic to burp automatically without the manual efforts of navigating to settings etc..
- Run the command : "chmod +x set_proxy.sh"
- Run the command : "./set_proxy.sh set" to enable the proxy
- Run the command : "./set_proxy.sh unset" to disable the proxy
- Make sure to configure proxy in burpsuite to listen on all ports
  ![image](https://github.com/user-attachments/assets/ffcfc4d6-f892-4f66-a2ac-e3199c211cd9)
- Happy Hacking!!!
