echo "updating product name..."
sed 's/cm_/cd_/g' $1/cd.mk > $1/cd.mk.tmp
rm $1/cd.mk
mv $1/cd.mk.tmp $1/cd.mk
echo "done!"
