#!/bin/bash

# T.U.F.F. - Targeted Utility for Fast Forensics
# Version 2.0

# Dialog configuration
dialog_height=20
dialog_width=70

# Open script in dialog
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Open Script" \
       --yesno "Do you want to open the script in dialog?" $dialog_height $dialog_width

dialog_result=$?
if [[ $dialog_result -eq 0 ]]; then
    dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
           --title "Script" \
           --textbox "$0" $dialog_height $dialog_width
    exit 0
fi

# Get input for target domain (variable A)
A=$(dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
           --title "Target Domain" \
           --inputbox "Enter the target domain:" $dialog_height $dialog_width 3>&1 1>&2 2>&3)

dialog_result=$?
if [[ $dialog_result -ne 0 ]]; then
    exit 1
fi

# Get input for output path (variable B)
B=$(dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
           --title "Output Path" \
           --inputbox "Enter the output path:" $dialog_height $dialog_width 3>&1 1>&2 2>&3)

dialog_result=$?
if [[ $dialog_result -ne 0 ]]; then
    exit 1
fi

# Create the output directory if it doesn't exist
mkdir -p "$B"

# Introduction dialog
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Information" \
       --msgbox "\nScanning the domain: $A\n\nResults will be stored in: $B\n\nStarting the scanning procedure..." $dialog_height $dialog_width

# whois
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting whois scanning..." $dialog_height $dialog_width
whois "$A" > "$B/whois.txt"

# dnswalk
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting dnswalk scanning..." $dialog_height $dialog_width
dnswalk -r "$A" > "$B/dnswalk.txt"

# nmap
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting nmap scanning..." $dialog_height $dialog_width
nmap -T4 -A -p- "$A" > "$B/nmap.txt"

# dmitry
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting dmitry scanning..." $dialog_height $dialog_width
dmitry -winsepfb "$A" > "$B/dmitry.txt"

# theharvester (default mode)
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting theharvester (default mode) scanning..." $dialog_height $dialog_width
theharvester -d "$A" -l 500 -b all > "$B/theharvester.txt"

# lynx
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting lynx scanning..." $dialog_height $dialog_width
lynx -dump "https://www.$A" > "$B/lynx.txt"

# nikto
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting nikto scanning..." $dialog_height $dialog_width
nikto -h "$A" > "$B/nikto.txt"

# dnsrecon
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting dnsrecon scanning..." $dialog_height $dialog_width
dnsrecon -d "$A" -a > "$B/dnsrecon.txt"

# sublist3r
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting sublist3r scanning..." $dialog_height $dialog_width
sublist3r -d "$A" -o "$B/sublist3r.txt"

# dnsenum
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting dnsenum scanning..." $dialog_height $dialog_width
dnsenum "$A" > "$B/dnsenum.txt"

# dnsmap
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting dnsmap scanning..." $dialog_height $dialog_width
dnsmap "$A" > "$B/dnsmap.txt"

# theharvester (email mode)
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting theharvester (email mode) scanning..." $dialog_height $dialog_width
theharvester -d "$A" -l 500 -b google > "$B/theharvester_email.txt"

# wafw00f
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting wafw00f scanning..." $dialog_height $dialog_width
wafw00f "$A" > "$B/wafw00f.txt"

# sslyze
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting sslyze scanning..." $dialog_height $dialog_width
sslyze --regular "$A" > "$B/sslyze.txt"

# dig
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting dig scanning..." $dialog_height $dialog_width
dig "$A" > "$B/dig.txt"

# traceroute
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Progress" \
       --infobox "Starting traceroute scanning..." $dialog_height $dialog_width
traceroute "$A" > "$B/traceroute.txt"

# Done dialog
dialog --backtitle "T.U.F.F. - Targeted Utility for Fast Forensics" \
       --title "Scanning Procedure Completed" \
       --msgbox "\nScanning Procedure Completed.\n\nResults are stored in the specified output path.\n\nThank you for using T.U.F.F. v2." $dialog_height $dialog_width
