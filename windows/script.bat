awk.exe "END{print}" alles.txt > letzte.txt
awk.exe -F "," "{print $9}" letzte.txt > .temp.txt
awk.exe -F ":" "{print $3}" .temp.txt > Distance.txt