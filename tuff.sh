#!/bin/bash
#
#----------------------------------------------------------------------- 
#
#
#  ___________  ____ ___  ______________________ 
#  \__    ___/ |    |   \ \_   _____/\_   _____/ 
#    |    |    |    |   /  |    __)   |    __)   
#    |    |    |    |  /   |     \    |     \    
#    |____| /\ |______/ /\ \___  / /\ \___  / /\ 
#           \/          \/     \/  \/     \/  \/ 
#
# The Ultimate Forensics Framework
# Version : 1.4
# Coded by : John Modica
#
# Tested on : Kali Linux 
# It is highly recommended to use this tool on Kali Linux OS.
#
#-----------------------------------------------------------------------
#
clear
#-------------
#First Dialog
#-------------
echo "---------------------------------------------------"
echo ""
echo "   ___________  ____ ___  ______________________   "
echo "   \__    ___/ |    |   \ \_   _____/\_   _____/   "
echo "     |    |    |    |   /  |    __)   |    __)     "
echo "     |    |    |    |  /   |     \    |     \      "
echo "     |____| /\ |______/ /\ \___  / /\ \___  / /\   "
echo "            \/          \/     \/  \/     \/  \/   "
echo ""
echo "[ T.U.F.F. v1.4 - The Ultimate Forensics Framework ]"
echo ""
echo 'set send_human {.1 .3 1 .05 2}; send -h "This Tool Is Designed To Be Used On Kali Linux."' | expect -f /dev/stdin
echo ""
echo 'set send_human {.1 .3 1 .05 2}; send -h "Coded By : John Modica @ CybernetiX-S3C"' | expect -f /dev/stdin
echo ""
echo 'set send_human {.1 .3 1 .05 2}; send -h "Facebook : https://facebook.com/Cyber.S3C.Professional\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "Website  : https://CybernetiX-S3C.github.io\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "About Me : https://John-Modica.github.io\n"' | expect -f /dev/stdin
echo ""
echo 'set send_human {.1 .3 1 .05 2}; send -h "DISCLAIMER:\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "This tool should be used purely for ethical and\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "educational purposes only. Hacking without consent\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "in most countries is infact illegal and punishable,\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "but not limited to the following:\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "Imprisonment, Fined, or Death.\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "Please, do NOT attempt to scan either government or private\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "IT businesses without legal permission."' | expect -f /dev/stdin
echo ""
echo ""
echo 'set send_human {.1 .3 1 .05 2}; send -h "With all the legal disclaimers out of the way,\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "we can now begin.\n"' | expect -f /dev/stdin
echo ""
echo 'set send_human {.1 .3 1 .05 2}; send -h "If you disagree with the above statement,\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "please feel free to exit with CTRL + C.\n"' | expect -f /dev/stdin
echo ""
echo "-----------------------------------------------------------"
echo 'set send_human {.1 .3 1 .05 2}; send -h "Enter the domain/IP of your target below. \n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "Example --> site.com or #.#.#.#  !$ "' | expect -f /dev/stdin
read  A
echo 'set send_human {.1 .3 1 .05 2}; send -h "Enter the path of your output files.\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "Example --> /root/Desktop        !$ "' | expect -f /dev/stdin
read  B
echo 'set send_human {.1 .3 1 .05 2}; send -h "Starting Scanning Procedure..."' | expect -f /dev/stdin
echo ""
sleep 1
echo 'set send_human {.1 .3 1 .05 2}; send -h "You Can Sleep or Do Another Activity\n"' | expect -f /dev/stdin
echo 'set send_human {.1 .3 1 .05 2}; send -h "This May Take Several Hours To Complete.\n"' | expect -f /dev/stdin
sleep 2
echo "-----------------------------------------------------------"
echo ""
#----------------------
#Information Gathering
#----------------------
#whois
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting whois scanning...\n"' | expect -f /dev/stdin
whois $A > $B/whois.txt
sleep 2
echo 'set send_human {.1 .3 1 .05 2}; send -h "whois scanning done...\n"' | expect -f /dev/stdin
sleep 2
#dnswalk
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting dnswalk scanning...\n"' | expect -f /dev/stdin 
dnswalk $A. > $B/dnswalk.txt
sleep 2
echo 'set send_human {.1 .3 1 .05 2}; send -h "dnswalk scanning done...\n"' | expect -f /dev/stdin
sleep 2 
#nmap
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting nmap scanning...\n"' | expect -f /dev/stdin
nmap -v -A $A > $B/nmap.txt
sleep 2
echo 'set send_human {.1 .3 1 .05 2}; send -h "nmap scanning done...\n"' | expect -f /dev/stdin
sleep 2
#dmitry
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting dmitry scanning...\n"' | expect -f /dev/stdin
dmitry -winsepfb $A > $B/dmitry.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "dmitry scanning done...\n"' | expect -f /dev/stdin
sleep 2
#theharvester
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting theharvester scanning...\n"' | expect -f /dev/stdin
theharvester -d $A -l 500 -b all > $B/theharvester.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "theharvester scanning done...\n"' | expect -f /dev/stdin
sleep 2
#linx
#echo 'set send_human {.1 .3 1 .05 2}; send -h "starting lynx scanning...\n"' | expect -f /dev/stdin
#linx -listonly -dump $A > $B/lynx.txt
#echo 'set send_human {.1 .3 1 .05 2}; send -h "lynx scanning done...\n"' | expect -f /dev/stdin
#sleep 2
#nslookup
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting nslookup scanning...\n"' | expect -f /dev/stdin
nslookup $A > $B/nslookup.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "nslookup scanning done...\n"' | expect -f /dev/stdin
sleep 2
#wafw00f
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting waf00f scanning...\n"' | expect -f /dev/stdin
wafw00f $A > $B/wafw00f.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "wafw00f scanning done...\n"' | expect -f /dev/stdin
sleep 2
#urlcrazy
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting urlcrazy scanning...\n"' | expect -f /dev/stdin
urlcrazy $A > $B/urlcrazy.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "urlcrazy scanning done...\n"' | expect -f /dev/stdin
sleep 2
#dnsmap
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting dnsmap scanning...\n"' | expect -f /dev/stdin
dnsmap $A > $B/dnsmap.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "dnsmap scanning done...\n"' | expect -f /dev/stdin
sleep 2

#-----------------------------
#AUDITING
#-----------------------------
#LBD
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting lbd scanning...\n"' | expect -f /dev/stdin
lbd $A > $B/lbd.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "lbd scanning done...\n"' | expect -f /dev/stdin
sleep 2
#SSLyze
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting sslyze scanning...\n"' | expect -f /dev/stdin
sslyze --heartbleed --sslv2 --sslv3 --tlsv1 --tlsv1_1 --tlsv1_2 --http_get $A > $B/sslyze.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "sslyze scanning done...\n"' | expect -f /dev/stdin
sleep 2
#whatweb
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting whatweb scanning...\n"' | expect -f /dev/stdin
whatweb $A > $B/whatweb.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "whatweb scanning done...\n"' | expect -f /dev/stdin
sleep 2
#automater
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting automater scanning...\n"' | expect -f /dev/stdin
automater -V $A > $B/automater.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "automater scanning done...\n"' | expect -f /dev/stdin
sleep 2
#ua-tester
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting ua-tester scanning...\n"' | expect -f /dev/stdin
ua-tester -u https://$A > $B/uatester.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "ua-tester scanning done...\n"' | expect -f /dev/stdin
sleep 2
#gobuster
echo 'set send_human {.1 .3 1 .05 2}; send -h "preparing gobuster...\n"' | expect -f /dev/stdin
apt install gobuster
echo 'set send_human {.1 .3 1 .05 2}; send -h "gobuster ready..\n"' | expect -f /dev/stdin
sleep 1
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting gobuster scanning...\n"' | expect -f /dev/stdin
gobuster -e -u $A -w /usr/share/wordlists/dirb/common.txt > $B/gobuster.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "gobuster scanning done...\n"' | expect -f /dev/stdin
sleep 2
#grabber
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting grabber scanning...\n"' | expect -f /dev/stdin
grabber --spider 1 --sql --xss --url https://$A > $B/grabber.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "grabber scanning done...\n"' | expect -f /dev/stdin
sleep 2
#parsero
echo 'set send_human {.1 .3 1 .05 2}; send -h "preparting parsero...\n"' | expect -f /dev/stdin
apt install parsero
echo 'set send_human {.1 .3 1 .05 2}; send -h "parsero ready...\n"' | expect -f /dev/stdin
sleep 1
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting parsero scanning...\n"' | expect -f /dev/stdin
parsero -u $A -sb > $B/parsero.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "parsero scanning done...\n"' | expect -f /dev/stdin
sleep 2
#uniscan
echo 'set send_human {.1 .3 1 .05 2}; send -h "starting uniscan scanning...\n"' | expect -f /dev/stdin
uniscan -u https://$A -qwedsiogj > $B/uniscan.txt
echo 'set send_human {.1 .3 1 .05 2}; send -h "uniscan scanning done...\n"' | expect -f /dev/stdin
sleep 2
#----------
#Reporting
#----------
echo 'set send_human {.1 .3 1 .05 2}; send -h "All scanning procedure has been completed. Generating the Forensics Report. Please Wait...\n"' | expect -f /dev/stdin
echo PHRpdGxlPlRoZSBVbHRpbWF0ZSBGb3JlbnNpY3MgRnJhbWV3b3JrIC0gRm9yZW5zaWNzIFJlcG9ydDwvdGl0bGU+CjwhLS0KIyBULlUuRi5GLiBWMS40CiMgQnkuIEpvaG4gTW9kaWNhCi0tPgo8bGluayByZWw9Imh0dHBzOi8vaS5pYmIuY28veWRGeHA2Qy9mb3JlbnNpYy1zY2llbmNlLTEucG5nIiB0eXBlPSJpbWFnZS94LWljb24iLz4KPHN0eWxlPgoqIHsKICBib3gtc2l6aW5nOiBib3JkZXItYm94Owp9Cgpib2R5IHsKICBtYXJnaW46IDA7CiAgZm9udC1mYW1pbHk6IEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7Cn0KCi8qIFN0eWxlIHRoZSBzaWRlIG5hdmlnYXRpb24gKi8KLnNpZGVuYXYgewogIGhlaWdodDogMTAwJTsKICB3aWR0aDogMjAwcHg7CiAgcG9zaXRpb246IGZpeGVkOwogIHotaW5kZXg6IDE7CiAgdG9wOiAwOwogIGxlZnQ6IDA7CiAgY29sb3I6IHdoaXRlOwogIGJhY2tncm91bmQtY29sb3I6ICMxMTE7CiAgb3ZlcmZsb3cteDogaGlkZGVuOwp9CgoKLyogU2lkZSBuYXZpZ2F0aW9uIGxpbmtzICovCi5zaWRlbmF2IGEgewogIGNvbG9yOiB3aGl0ZTsKICBwYWRkaW5nOiAxNnB4OwogIHRleHQtZGVjb3JhdGlvbjogbm9uZTsKICBkaXNwbGF5OiBibG9jazsKfQoKLyogQ2hhbmdlIGNvbG9yIG9uIGhvdmVyICovCi5zaWRlbmF2IGE6aG92ZXIgewogIGJhY2tncm91bmQtY29sb3I6ICNkZGQ7CiAgY29sb3I6IGJsYWNrOwp9CgovKiBTdHlsZSB0aGUgY29udGVudCAqLwouY29udGVudCB7CiAgbWFyZ2luLWxlZnQ6IDIwMHB4OwogIHBhZGRpbmctbGVmdDogMjBweDsKfQo8L3N0eWxlPgo8Ym9keT4KPGRpdiBjbGFzcz0ic2lkZW5hdiI+CiAgPGltZyBzcmM9Imh0dHBzOi8vaS5pYmIuY28vN2pMcTE2OS9DeWJlclMzQy5qcGciIGhlaWdodD0iMjUwIiB3aWR0aD0iMjUwIj4KICA8YnI+PGJyPjxocj4KICA8Y2VudGVyPgogIFRoZSBVbHRpbWF0ZSBGb3JlbnNpY3MgRnJhbWV3b3JrIDEuMDxicj4KICBieSA8YnI+Sm9obiBNb2RpY2EKICA8L2NlbnRlcj48aHI+Cjxicj48aHI+CiAgPGEgaHJlZj0iaHR0cHM6Ly9DeWJlcm5ldGlYLVMzQy5naXRodWIuaW8vIj5XZWJzaXRlPC9hPgogIDxhIGhyZWY9Imh0dHBzOi8vZmFjZWJvb2suY29tL0N5YmVyLlMzQy5Qcm9mZXNzaW9uYWwvIj5GYWNlYm9vazwvYT4KICA8YSBocmVmPSJodHRwczovL0pvaG4tTW9kaWNhLmdpdGh1Yi5pby8iPkFib3V0IERldjwvYT48aHI+CjwvZGl2PgoKPGNlbnRlcj4KPGRpdiBjbGFzcz0iY29udGVudCI+Cgk8aW1nIHNyYz0iaHR0cHM6Ly9pLmliYi5jby95ZEZ4cDZDL2ZvcmVuc2ljLXNjaWVuY2UtMS5wbmciIGhlaWdodD0iODAiIHdpZHRoPSI4MCI+Cgk8aDE+Rk9SRU5TQ1MgUkVQT1JUPC9oMT4KCVRoZSBVbHRpbWF0ZSBGb3JlbnNpY3MgRnJhbWV3b3JrIDEuNAoJPGJyPgoJQ29kZWQgYnkgOiBKb2huIE1vZGljYSBAIEN5YmVybmV0aVgtUzNDCgk8YnI+Cgk8YnI+CglCeSB1c2luZyB0aGlzIHRvb2wsIHlvdSBoYXZlIGFncmVlZCBvbiBnb3Zlcm5tZW50IHJlZ3VsYXRpb25zIHJlZ2FyZGluZyBpbmZvcm1hdGlvbiwgdGVjaG5vbG9neSwgYW5kIGNvbW11bmljYXRpb24uIAoJPGJyPkFueSB2aW9sYXRpb24gb2YgdGhlIGxhdyBhbmQgdGhlIGlsbGVnYWwgdXNlIG9mIHRoaXMgdG9vbCBsZWF2ZXMgYWxsIHJpc2tzIHRoZXJlZm9yZSBvbiB5b3UsIGFzIHRoZSBzb2xlIHBlcnNvbiByZXNwb25zaWJsZS4KCTxicj5UaGUgZGV2ZWxvcGVyIG9mIHRoaXMgc2NyaXB0IGlzIE5PVCwgYnkgYW55IG1lYW5zLCByZXNwb25zaWJsZSBmb3IgYW55IGNvbnNlcXVlbmNlcyB0aGF0IG1heSBjb21lIHdpdGggeW91ciBhY3Rpb25zLgoJPGJyPjxicj48Yj5ETyBOT1Qgc2NhbiBnb3Zlcm5tZW50IGFuZCBwcml2YXRlIElUIG9iamVjdHMgd2l0aG91dCBsZWdhbCBwZXJtaXNzaW9uLjwvYj4KCTxicj4KCTxicj4KCTxocj4KCTxpbWcgc3JjPSJodHRwczovL3N0YXRpYy50aGVub3VucHJvamVjdC5jb20vcG5nLzc1NjM2My0yMDAucG5nIiBoZWlnaHQ9IjUwIiB3aWR0aD0iNTAiPjxicj4KCVdob2lzIFNjYW5uaW5nIE91dHB1dDxicj48YnI+Cgk8aWZyYW1lIHNyYz0id2hvaXMudHh0IiBoZWlnaHQ9IjUwMCIgd2lkdGg9IjgwMCI+PC9pZnJhbWU+IDxicj48YnI+Cgk8aHI+Cgk8aW1nIHNyYz0iaHR0cHM6Ly9zdGF0aWMudGhlbm91bnByb2plY3QuY29tL3BuZy83NTYzNjMtMjAwLnBuZyIgaGVpZ2h0PSI1MCIgd2lkdGg9IjUwIj48YnI+CiAgICBObWFwIFNjYW5uaW5nIE91dHB1dDxicj48YnI+Cgk8aWZyYW1lIHNyYz0ibm1hcC50eHQiIGhlaWdodD0iNTAwIiB3aWR0aD0iODAwIj48L2lmcmFtZT4gPGJyPjxicj4KCTxocj4KCTxpbWcgc3JjPSJodHRwczovL3N0YXRpYy50aGVub3VucHJvamVjdC5jb20vcG5nLzc1NjM2My0yMDAucG5nIiBoZWlnaHQ9IjUwIiB3aWR0aD0iNTAiPjxicj4KICAgICBETlNXYWxrIE91dHB1dDxicj48YnI+Cgk8aWZyYW1lIHNyYz0iZG5zd2Fsay50eHQiIGhlaWdodD0iNTAwIiB3aWR0aD0iODAwIj48L2lmcmFtZT4gPGJyPjxicj4KCTxocj4KCTxpbWcgc3JjPSJodHRwczovL3N0YXRpYy50aGVub3VucHJvamVjdC5jb20vcG5nLzc1NjM2My0yMDAucG5nIiBoZWlnaHQ9IjUwIiB3aWR0aD0iNTAiPjxicj4KICAgICBEbWl0cnkgT3V0cHV0PGJyPjxicj4KCTxpZnJhbWUgc3JjPSJkbWl0cnkudHh0IiBoZWlnaHQ9IjUwMCIgd2lkdGg9IjgwMCI+PC9pZnJhbWU+IDxicj48YnI+Cgk8aHI+Cgk8aW1nIHNyYz0iaHR0cHM6Ly9zdGF0aWMudGhlbm91bnByb2plY3QuY29tL3BuZy83NTYzNjMtMjAwLnBuZyIgaGVpZ2h0PSI1MCIgd2lkdGg9IjUwIj48YnI+CiAgICAgVGhlaGFydmVzdGVyIE91dHB1dDxicj48YnI+Cgk8aWZyYW1lIHNyYz0idGhlaGFydmVzdGVyLnR4dCIgaGVpZ2h0PSI1MDAiIHdpZHRoPSI4MDAiPjwvaWZyYW1lPiA8YnI+PGJyPgoJPGhyPgoJPGltZyBzcmM9Imh0dHBzOi8vc3RhdGljLnRoZW5vdW5wcm9qZWN0LmNvbS9wbmcvNzU2MzYzLTIwMC5wbmciIGhlaWdodD0iNTAiIHdpZHRoPSI1MCI+PGJyPgogICAgIExCRCBPdXRwdXQ8YnI+PGJyPgoJPGlmcmFtZSBzcmM9ImxiZC50eHQiIGhlaWdodD0iNTAwIiB3aWR0aD0iODAwIj48L2lmcmFtZT4gPGJyPjxicj4KCTxocj4KCTxpbWcgc3JjPSJodHRwczovL3N0YXRpYy50aGVub3VucHJvamVjdC5jb20vcG5nLzc1NjM2My0yMDAucG5nIiBoZWlnaHQ9IjUwIiB3aWR0aD0iNTAiPjxicj4KICAgICBTU0x5emUgT3V0cHV0PGJyPjxicj4KCTxpZnJhbWUgc3JjPSJzc2x5emUudHh0IiBoZWlnaHQ9IjUwMCIgd2lkdGg9IjgwMCI+PC9pZnJhbWU+IDxicj48YnI+Cgk8aHI+Cgk8aW1nIHNyYz0iaHR0cHM6Ly9zdGF0aWMudGhlbm91bnByb2plY3QuY29tL3BuZy83NTYzNjMtMjAwLnBuZyIgaGVpZ2h0PSI1MCIgd2lkdGg9IjUwIj48YnI+CiAgICAgV2hhdHdlYiBPdXRwdXQ8YnI+PGJyPgoJPGlmcmFtZSBzcmM9IndoYXR3ZWIudHh0IiBoZWlnaHQ9IjUwMCIgd2lkdGg9IjgwMCI+PC9pZnJhbWU+IDxicj48YnI+Cgk8aHI+Cgk8aW1nIHNyYz0iaHR0cHM6Ly9zdGF0aWMudGhlbm91bnByb2plY3QuY29tL3BuZy83NTYzNjMtMjAwLnBuZyIgaGVpZ2h0PSI1MCIgd2lkdGg9IjUwIj48YnI+CiAgICAgQXV0b21hdGVyIE91dHB1dDxicj48YnI+Cgk8aWZyYW1lIHNyYz0iYXV0b21hdGVyLnR4dCIgaGVpZ2h0PSI1MDAiIHdpZHRoPSI4MDAiPjwvaWZyYW1lPiA8YnI+PGJyPgoJPGhyPgoJPGltZyBzcmM9Imh0dHBzOi8vc3RhdGljLnRoZW5vdW5wcm9qZWN0LmNvbS9wbmcvNzU2MzYzLTIwMC5wbmciIGhlaWdodD0iNTAiIHdpZHRoPSI1MCI+PGJyPgogICAgIFVBLVRlc3RlciBPdXRwdXQ8YnI+PGJyPgoJPGlmcmFtZSBzcmM9InVhdGVzdGVyLnR4dCIgaGVpZ2h0PSI1MDAiIHdpZHRoPSI4MDAiPjwvaWZyYW1lPiA8YnI+PGJyPgoJPGhyPgoJPGltZyBzcmM9Imh0dHBzOi8vc3RhdGljLnRoZW5vdW5wcm9qZWN0LmNvbS9wbmcvNzU2MzYzLTIwMC5wbmciIGhlaWdodD0iNTAiIHdpZHRoPSI1MCI+PGJyPgogICAgIEdvYnVzdGVyIE91dHB1dDxicj48YnI+Cgk8aWZyYW1lIHNyYz0iZ29idXN0ZXIudHh0IiBoZWlnaHQ9IjUwMCIgd2lkdGg9IjgwMCI+PC9pZnJhbWU+IDxicj48YnI+Cgk8aHI+Cgk8aW1nIHNyYz0iaHR0cHM6Ly9zdGF0aWMudGhlbm91bnByb2plY3QuY29tL3BuZy83NTYzNjMtMjAwLnBuZyIgaGVpZ2h0PSI1MCIgd2lkdGg9IjUwIj48YnI+CiAgICAgR3JhYmJlciBPdXRwdXQ8YnI+PGJyPgoJPGlmcmFtZSBzcmM9ImdyYWJiZXIudHh0IiBoZWlnaHQ9IjUwMCIgd2lkdGg9IjgwMCI+PC9pZnJhbWU+IDxicj48YnI+Cgk8aHI+CQoJPGltZyBzcmM9Imh0dHBzOi8vc3RhdGljLnRoZW5vdW5wcm9qZWN0LmNvbS9wbmcvNzU2MzYzLTIwMC5wbmciIGhlaWdodD0iNTAiIHdpZHRoPSI1MCI+PGJyPgogICAgIFBhcnNlcm8gT3V0cHV0PGJyPjxicj4KCTxpZnJhbWUgc3JjPSJwYXJzZXJvLnR4dCIgaGVpZ2h0PSI1MDAiIHdpZHRoPSI4MDAiPjwvaWZyYW1lPiA8YnI+PGJyPgoJPGhyPgkKCTxpbWcgc3JjPSJodHRwczovL3N0YXRpYy50aGVub3VucHJvamVjdC5jb20vcG5nLzc1NjM2My0yMDAucG5nIiBoZWlnaHQ9IjUwIiB3aWR0aD0iNTAiPjxicj4KICAgICBVbmlzY2FuIE91dHB1dDxicj48YnI+Cgk8aWZyYW1lIHNyYz0idW5pc2Nhbi50eHQiIGhlaWdodD0iNTAwIiB3aWR0aD0iODAwIj48L2lmcmFtZT4gPGJyPjxicj4KCTxocj4KCTwvY2VudGVyPgoJPGJyPgoJPGJyPgoJPGhyPgoJPGJyPjxicj4KCTxjZW50ZXI+VC5VLkYuRi4gdjEuNCA8YnI+Q29weXJpZ2h0IMKpIDIwMTkgSm9obiBNb2RpY2EgQCBDeWJlcm5ldGlYLVMzQy4gQUxMIFJpZ2h0cyBSZXNlcnZlZCA8YnI+UmVjb2RpbmcsIFJlbmFtaW5nLCBEaXN0cmlidXRpbmcsIFNlbGxpbmcsIG9yIFNpbXBseSBjaGFuZ2luZyB0aGlzIHNjdGlwdCBpcyBpbGxlZ2FsLjxicj48YnI+PC9jZW50ZXI+Cgk8aHI+CjwvZGl2Pgo8L2JvZHk+CjwvaHRtbD4K | base64 --decode  > $B/forensics-report.html
sleep 1
echo 'set send_human {.1 .3 1 .05 2}; send -h "The Forensics Report Has Been Generated.\n"' | expect -f /dev/stdin
sleep 2
echo 'set send_human {.1 .3 1 .05 2}; send -h "Thank you for your patience.\n"' | expect -f /dev/stdin
echo "-----------------------------------"
echo "| T.U.F.F. v1.4  x   John Modica  |"
echo "-----------------------------------"
