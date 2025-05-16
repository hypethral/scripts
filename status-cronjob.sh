#!/bin/bash

system_monitor(){
printf "%-17s\n" "-------------------------------------------------------------------------------------------"
printf "%-17s\n" "|                                 System Resource Monitor                                 |"
printf "%-17s\n" "-------------------------------------------------------------------------------------------"
printf "%-17s\n" "|             CPU Resources Monitor         ||             General Information            |"
printf "%-17s\n" "-------------------------------------------------------------------------------------------"
printf "%-17s %48s %14s\n"  "| CPU Usage:      $(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')" "|| Date:     $(date +'%Y-%m-%d %H:%M:%S')" "|"
printf "%-17s %36s %27s\n" "| Max Frequency:  3.60 GHz" "|| Hostname: $(cat /etc/hostname)" "|"
printf "%-17s %29s %30s\n" "| Current Freq:   $(cat /proc/cpuinfo | grep MHz | awk '{print $4}' | sed -n '1p') MHz" "|| Threads:  $(ps -eLf | wc -l)" "|"
printf "%-17s %35s %31s\n" "| CPU Temp:       40 °C" "|| Processes $(ps -e | wc -l)" "|"
printf "%-17s\n" "-------------------------------------------------------------------------------------------"
printf "%-17s\n" "|             Ram & Swap Usage              ||             Storage Information            |"
printf "%-17s\n" "-------------------------------------------------------------------------------------------"
printf "%-17s %42s %22s\n" "| Total Ram:      $(free -m | grep Mem | awk '{print $2}') MB" "|| Total Storage:  $(df -h | grep C | awk '{print $2}')B" "|"
printf "%-17s %42s %23s\n" "| Used RAM:       $(free -m | grep Mem | awk '{print $3}') MB" "|| Used Storage:   $(df -h | grep C | awk '{print $3}')B" "|"
printf "%-17s %42s %22s\n" "| Free RAM:       $(free -m | grep Mem | awk '{print $4}') MB" "|| Free Storage:   $(df -h | grep C | awk '{print $4}')B" "|"
printf "%-17s %18s %44s\n" "| Usage RAM Pert: $(free -m | grep Mem | awk '{print $2/$3}') %" "||" "|"
printf "%-17s %20s %44s\n" "| Swap Usage:     $(free -m | grep Swap | awk '{print $2}') MB" "||" "|"
printf "%-17s %20s %44s\n" "| Free Swap:      $(free -m | grep Swap | awk '{print $4}') MB" "||" "|"
printf "%-17s\n" "-------------------------------------------------------------------------------------------"
}

url="https://hooks.slack.com/services/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"

myEcho=$(system_monitor)
echo "$myEcho"
curl -X POST -H 'Content-type: application/json' --data "{\"text\": \" ${myEcho}\"}" "$url"