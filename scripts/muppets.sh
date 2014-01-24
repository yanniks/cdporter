#/bin/bash

echo "adding TheMuppets vendor..."
if [ -d an*samsung*$2 ];then
	export VENDOR=samsung
elif [ -d an*htc*$2 ];then
	export VENDOR=htc
elif [ -d an*motorola*$2 ];then
	export VENDOR=motorola
elif [ -d an*bn*$2 ];then
	export VENDOR=bn
elif [ -d an*sony*$2 ];then
	export VENDOR=sony
elif [ -d an*acer*$2 ];then
	export VENDOR=acer
elif [ -d an*lge*$2 ];then
	export VENDOR=lge
elif [ -d an*oppo*$2 ];then
	export VENDOR=oppo
elif [ -d an*nvidia*$2 ];then
	export VENDOR=nvidia
elif [ -d an*amazon*$2 ];then
	export VENDOR=amazon
elif [ -d an*huawei*$2 ];then
	export VENDOR=huawei
elif [ -d an*hp*$2 ];then
	export VENDOR=hp
elif [ -d an*zte*$2 ];then
	export VENDOR=zte
elif [ -d an*google*$2 ];then
	export VENDOR=google
fi

if [ ! -z "$VENDOR" ];then

sed 's/\}$/\},/g' $1/cd.dependencies > $1/cd.dep.tmp
rm -f $1/cd.dependencies
mv $1/cd.dep.tmp $1/cd.dependencies

	sed 's/]/ { \
   \"repository\": \"TheMuppets\/proprietary_vendor_'$VENDOR'\", \
   \"target_path\": \"vendor\/'$VENDOR'\", \
   \"branch\": \"cm-11.0\" \
 } \
]/g' $1/cd.dependencies > $1/cd.dep.tmp
	rm -f $1/cd.dependencies
	mv $1/cd.dep.tmp $1/cd.dependencies
fi
echo "done!"
