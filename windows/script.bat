awk.exe.lnk "END{print}" C:\Users\niklas-win11\Documents\GitHub\Hochwasserwarnsystem\windows\alles.txt > letzte.txt
awk.exe.lnk -F "," "{print $9}" C:\Users\niklas-win11\Documents\GitHub\Hochwasserwarnsystem\windows\letzte.txt > .temp.txt
awk.exe.lnk -F ":" "{print $3}" C:\Users\niklas-win11\Documents\GitHub\Hochwasserwarnsystem\windows\.temp.txt > Distance.txt