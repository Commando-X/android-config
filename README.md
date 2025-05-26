# Android Proxy Configuration Scripts

This project provides automation scripts to simplify the process of configuring Android devices (emulator or physical) to proxy HTTP/S traffic through **Burp Suite** for security testing or debugging.

## 📁 Project Structure

- `mobileconfig.sh`: Automates configuration of Burp Certificte to capture traffic via Burp Suite.
- `set_proxy.sh`: Enables or disables the proxy settings on the Android device without manual navigation.

---

## 🔧 Prerequisites

- **Burp Suite** must be running and configured to listen on **all interfaces**.
- An **Android device** (either emulator or physical) must be connected to your machine.
- Ensure ADB (Android Debug Bridge) is properly installed and accessible from your terminal.

---

## 🚀 Usage

### 1. Clone the Repository

```bash
git clone https://github.com/Commando-X/android-config.git
cd android-config
```

---

### 2. Using `mobileconfig.sh`

This script configures the Android device to route all traffic through Burp Suite.

```bash
chmod +x mobileconfig.sh
./mobileconfig.sh
```

> 💡 **Tip:** This eliminates the need for manual proxy setup on the Android device.

---

### 3. Using `set_proxy.sh`

This script allows you to toggle proxy settings on and off.

#### Enable Proxy:

```bash
chmod +x set_proxy.sh
./set_proxy.sh set
```

#### Disable Proxy:

```bash
./set_proxy.sh unset
```

---

## 📸 Screenshot

Make sure your Burp Suite proxy is configured like this:

![Burp Proxy Settings](https://github.com/user-attachments/assets/ffcfc4d6-f892-4f66-a2ac-e3199c211cd9)

---

## 🧠 Troubleshooting

If you're unable to intercept **Google traffic** or system-level requests:

- Check that your Burp Suite is **listening on all interfaces**.
- Replace the hardcoded IP address `172.17.0.1` in the scripts with your actual machine's IP address as shown in Burp.

- ![image](https://github.com/user-attachments/assets/bf92d01d-2ea1-4886-a478-095ce4ffb390)
- Restart your device and re-run the script if changes don’t take effect.

---

## 🙌 Contribution & License

Feel free to fork, modify, and contribute. Happy hacking!
