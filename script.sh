#!/bin/bash
i=0
a=1

for (( ; ; ))
do

curl -G "https://eu1.cloud.thethings.network/api/v3/as/applications/temp-sens-jgo/packages/storage/uplink_message" -H \
	"Authorization: Bearer NNSXS.WBQ36NNFPGABFN4I6WAOLC6JNGT66ALKRIA2HWY.UHGG3ETMOJWGN6AJMAH63B6HNG5TAUCW2ETETKUN4T3PG7HAWADA" \
	>./.temp.txt

tail -1 ./.temp.txt >> completed.txt


#Für alle Boards
cat completed.txt |  awk -F "," '{print $9 $14 $7}' | \
	awk -F '"' '{print $5" "$8" "$11 }' | \
	awk -F ":" '{print $0}' | cut -c 2- > distanceTime.txt
cat distanceTime.txt | awk -F " " '{print $1}' > testDis.txt 
cat distanceTime.txt | awk -F " " '{print $2}' | awk -F "." '{print $1}' | awk -F "T" '{print $1"_"$2}' \
	> testTime.txt 
cat distanceTime.txt | awk -F " " '{print $3}' | cut -c 2- > testStamp.txt

#Für das Board 3
grep 3235313217002B00 completed.txt > HW3-completed.txt
cat HW3-completed.txt |  awk -F "," '{print $9 $14 $7}' | \
	awk -F '"' '{print $5" "$8" "$11 }' | \
	awk -F ":" '{print $0}' | cut -c 2- > HW3-distanceTime.txt
cat HW3-distanceTime.txt | awk -F " " '{print $1}' > HW3-Dis.txt 
cat HW3-distanceTime.txt | awk -F " " '{print $2}' | awk -F "." '{print $1}' | awk -F "T" '{print $1"_"$2}' \
	> HW3-Time.txt 
cat HW3-distanceTime.txt | awk -F " " '{print $3}' | cut -c 2- > HW3-Stamp.txt



if [ $(tail -1 testDis.txt) -lt 3000 ]
then
   echo 1 >> warnung.txt
   #python3 email.py
   notify-send "warnung Hochwasser!!"
fi
i=$(awk "BEGIN {print $i+$a; exit}")

echo "Durchlauf $i"
sleep 1m
done
