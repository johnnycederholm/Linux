secureBootState=$(mokutil --sb-state)
mokLocation="/var/lib/shim-signed/mok/"

echo "Enroll Machine Owner Key (MOK)..."

if [ "$secureBootState" == "SecureBoot enabled" ]; then
    apt install -y dkms
    
    mokutil --import /var/lib/dkms/mok.pub

    if [ ! -d "$mokLocation" ]; then
        echo "$mokLocation doesn't exist. Creating it..."
        mkdir -p "$mokLocation"
    fi

    pushd "$mokLocation"
    openssl req -nodes -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -days 36500 -subj "/CN=No Corp/"
    openssl x509 -inform der -in MOK.der -out MOK.pem
    popd

    mokutil --import "${mokLocation}MOK.der"

    echo "mok_signing_key=\"${mokLocation}MOK.priv\"" | tee -a /etc/dkms/framework.conf
    echo "mok_certificate=\"${mokLocation}MOK.der\"" | tee -a /etc/dkms/framework.conf
else
    echo "SecureBoot not enabled. Skipping..."
fi