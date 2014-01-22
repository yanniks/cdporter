#/bin/bash

export current=$PWD
cd $1
echo "creating git commit..."
git branch cd-4.4 > /dev/null
git checkout cd-4.4 > /dev/null
git add cd.dependencies cd.mk > /dev/null
git rm cm.mk cm.dependencies > /dev/null
git commit -m "initial CyanDream commit" > /dev/null
echo "git stuff done! Please push the code to your new device repository."
cd $current
