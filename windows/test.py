
from plyer import notification
from io import BytesIO
import subprocess

# for simple commands
#subprocess.run(["ls", "-l"]) 
#subprocess.run(["echo "jldss"']) 

import os 
  
# Command to execute
# Using Windows OS command
cmd = 'curl.exe -G "https://eu1.cloud.thethings.network/api/v3/as/applications/temp-sens-jgo/packages/storage/uplink_message" -H  "Authorization: Bearer NNSXS.WBQ36NNFPGABFN4I6WAOLC6JNGT66ALKRIA2HWY.UHGG3ETMOJWGN6AJMAH63B6HNG5TAUCW2ETETKUN4T3PG7HAWADA"'
#cmd = 'ls'  
# Using os.system(
# ) method
os.system(cmd)
awk = 'awk.exe.lnk'
os.system(awk)

notification.notify(
    title = "ALERT!!!",
    message = "Achtung bei dir gibts hochwasser",
    timeout = 3
)
