echo "updating vendor..."
sed 's/vendor\/cm\//vendor\/cyandream\//g' $1/cm.mk > $1/cd.mk
rm $1/cm.mk
echo "done!"
