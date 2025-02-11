#!/bin/bash

# Download Burp certificate
echo "Downloading Burp certificate from Burp Suite..."
curl -o cert.der http://localhost:8080/cert

# Convert the Burp certificate to PEM format
echo "Converting certificate from DER to PEM format..."
openssl x509 -inform der -in cert.der -out burpcert.pem

# Generate the subject hash and rename the certificate
HASH=$(openssl x509 -inform PEM -subject_hash_old -in burpcert.pem | head -1)
echo "Renaming certificate to match subject hash: $HASH"
mv burpcert.pem $HASH.0

# Display certificate info for verification
echo "Displaying certificate subject information for verification..."
openssl x509 -inform PEM -subject -in $HASH.0

# List connected ADB devices
echo "Checking for connected ADB devices..."
adb devices

# Remount system as read-write
echo "Remounting the Android system as read-write..."
adb shell "su -c 'mount -o remount,rw /'"

# Push the Burp certificate to the Android device
echo "Pushing the Burp certificate to the Android device..."
adb push $HASH.0 /system/etc/security/cacerts/

# Fix permissions on the pushed certificate
echo "Fixing permissions on the certificate..."
adb shell "su -c 'chmod 644 /system/etc/security/cacerts/$HASH.0'"

# Remount the system as read-only
echo "Remounting the Android system as read-only..."
adb shell "su -c 'mount -o remount,ro /'"

echo "Certificate setup complete!"
echo "Written by Ghost(Badmus)"

