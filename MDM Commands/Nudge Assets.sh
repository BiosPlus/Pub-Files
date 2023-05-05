if [ -d "/tmp/nudge/" ] ; then
    echo "Nudge directory exists, skipping creation"
else
    echo "Creating Directory: /tmp/nudge/"
    mkdir -p "/tmp/nudge/"

    if [ -d "/tmp/nudge/" ] ; then
        echo "Asset directory exists, Good to go."
    else
        echo "Asset directory does not exist, something went wrong."
        exit 1
    fi
fi

#Grab latest asset images
echo "Downloading latest asset images"
/usr/bin/curl "https://raw.githubusercontent.com/BiosPlus/Pub-Files/main/Assets/appleRainbow.png" -o "/tmp/nudge/appleRainbow.png"
/usr/bin/curl "https://raw.githubusercontent.com/BiosPlus/Pub-Files/main/Assets/updateDark.png" -o "/tmp/nudge/updateDark.png"
/usr/bin/curl "https://raw.githubusercontent.com/BiosPlus/Pub-Files/main/Assets/updateLight.png" -o "/tmp/nudge/updateLight.png"
