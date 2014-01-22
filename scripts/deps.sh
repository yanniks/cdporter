#/bin/bash

if [ -z $1/cm.dependencies ]; then
echo "WARNING: cm.dependencies not existing! You'll probably need a local_manifest file for compiling your device. If you'd like to go further, please create your own cd.remove and cd.dependencies files!"
fi

echo "updating dependencies file..."
sed 's/\"repository\"/\"branch\": \"cm-11.0\",\
    \"repository\"/g' $1/cm.dependencies > $1/cm.tmp
rm -f $1/cm.dependencies
mv $1/cm.tmp $1/cm.dependencies
sed 's/\"android_/\"CyanogenMod\/android_/g' $1/cm.dependencies > $1/cd.dependencies
rm -f $1/cm.dependencies
echo "done!"
