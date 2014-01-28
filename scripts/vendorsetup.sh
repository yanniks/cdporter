if [ -f "$1/vendorsetup.sh" ]
then
	echo "updating vendorsetup.sh..."
	sed 's/cm_/cd_/g' $1/vendorsetup.sh > $1/vendorsetup.tmp
	rm $1/vendorsetup.sh
	mv $1/vendorsetup.tmp $1/vendorsetup.sh
	chmod +x $1/vendorsetup.sh
	echo "done!"
fi
