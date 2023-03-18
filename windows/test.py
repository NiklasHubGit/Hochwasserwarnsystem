from plyer import notification
from io import BytesIO
import subprocess
import os 
hw3Limit = 1100
curl = 'curl.exe -G "https://eu1.cloud.thethings.network/api/v3/as/applications/temp-sens-jgo/packages/storage/uplink_message" -H  "Authorization: Bearer NNSXS.WBQ36NNFPGABFN4I6WAOLC6JNGT66ALKRIA2HWY.UHGG3ETMOJWGN6AJMAH63B6HNG5TAUCW2ETETKUN4T3PG7HAWADA" > alles.txt'
os.system(curl)

awk = 'script.bat'
os.system(awk)
Distance = os.popen("type Distance.txt").read();
print(Distance)

if hw3Limit > int(Distance):
    notification.notify(
        title = "ALERT!!!",
        message = "Achtung bei dir gibts hochwasser",
        timeout = 1
    )
