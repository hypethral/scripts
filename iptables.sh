#!/bin/sh

selection=0
port=0
ip=0
function input {
   echo ""
   echo "1) DROP all incoming traffic"
   echo "2) Allow port"
   echo "3) Allow port via ip or subnet"
   echo "4) Drop port"
   echo -n "Please Select by pressing (1-4) : "
   read -r selection
   case $selection in
   1)
      iptables -A INPUT -j DROP
      echo "All incoming traffic blocked"
      ;;
   2)
      echo -n "Enter port number to Allow traffic : "
      read -r port
      iptables -I INPUT 1 -p tcp --dport $port -j ACCEPT
      ;;
   3)
      echo -n "Enter port number to Allow traffic->"
      read -r port
      echo -n "Standalone IP address Or with subnet (ex. 192.168.10.34) Input ->"
      read -r ip
      iptables -I INPUT 1 -p tcp --dport $port -s $ip -j ACCEPT
      ;;
   4)
      echo -n "Enter port number to Deny traffic->"
      read -r port
      iptables -I INPUT 1 -p tcp --dport $port -j DROP
      ;;
   *)
      echo "Select Correct Option, Please try again !"
      ;;
   esac
}


function output {
   echo ""
   echo "1) DROP all outgoing traffic"
   echo "2) Allow port"
   echo "3) Allow port via ip or subnet"
   echo "4) Drop port"
   echo -n "Please Select by pressing (1-4) : "
   read -r selection
   case $selection in
   1)
      iptables -A OUTPUT -j DROP
      echo "All incoming traffic blocked"
      ;;
   2)
      echo -n "Enter port number to Allow traffic : "
      read -r port
      iptables -I OUTPUT 1 -p tcp --sport $port -j ACCEPT
      ;;
   3)
      echo -n "Enter port number to Allow traffic->"
      read -r port
      echo -n "Standalone IP address Or with subnet (ex. 192.168.10.34) Input ->"
      read -r ip
      iptables -I OUTPUT 1 -p tcp --sport $port -s $ip -j ACCEPT
      ;;
   4)
      echo -n "Enter port number to Deny traffic->"
      read -r port
      iptables -I OUTPUT 1 -p tcp --sport $port -j DROP
      ;;
   *)
      echo "Select Correct Option, Please try again !"
      ;;
   esac
}


function menu {
   clear
   while [ $selection!=5 ]
   do
      echo ""
      echo "1) Incoming Traffic"
      echo "2) Outgoing Traffic"
      echo "3) Forword"
      echo "4) Flush"
      echo "5) iptable -L"
      echo "6) exit"
      echo -n "Please Select by pressing (1-6) ->" && read -r selection
      clear
      case $selection in
      1)
         input
         ;;
      2)
         output
         ;;
      3)
         echo "working on it"
         ;;
      4)
         iptables -F
         echo "Previous Configuration of IPtables have been flushed !"
         ;;
      5) 
         iptables -L
         ;;
      6)
         exit 0 
         ;;
      *)
         echo "Select Correct Option, Please try again !" 
         ;;
      esac
   done
      
}

echo "|| IPtable Configure Script ||"
iptables -F
echo "Previous Configuration of IPtables have been flushed !"
clear
menu