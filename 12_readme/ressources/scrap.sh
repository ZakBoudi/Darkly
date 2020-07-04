if [ -z "$1" ]
then
	echo "IP address"
else
	mkdir ./scrap
	cd ./scrap
	wget2 -q -np -r -A "README" -nd -l 0 -e robots=off http://$1/.hidden/
	nb=`ls | grep README | wc -l`
	echo "$nb README trouvé"
	i=$(($nb-1))
	read="README."
	while [ $i != 0 ]
	do
		file=$read$i
		echo `cat $file` | grep -Ev 'Demande|Non|Tu|Toujours'
		i=$(($i-1))
	done
fi