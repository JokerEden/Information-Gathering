#!/bin/bash
#Script Simple Information Gathering ;)
#Get IP Domain Target!?.
#$ ping https://target.com/. copy ip result ping 
#How To Exit To Tools 
#CTRL + Z or CTRL + C

#colors
red="\e[0;31m"
green="\e[0;32m"
white='\e[1;37m'
off="\e[0m"

#Options
nama=$red"INFORMATION" #Name
versi=$white"V1.0" #Version
pembuat=$red"Codename [Joker Eden]" #Author
situs=$white"https://cruznos.blogspot.com" #Websites

#detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Detected, Trying To Exit ..."
sleep 1
echo ""
echo -e $green"[*] Thanks For Using Info :)"
exit
}
clear
#check internet
function checkinternet {
  ping -c 1 google.com > /dev/null
  if [[ "$?" != 0 ]]
  then
    echo  " Checking For Internet: FAILED
    This Script Needs An Active Internet Connection"
    echo $red"
    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
    ████▌▄▌▄▐▐▌█████
    ████▌▄▌▄▐▐▌▀████
    ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
    "
    echo && sleep 2
    exit
  else
    echo -e $red  " -----------------------------------"
    echo -e $white " Checking For Internet:" $green"CONNECTED"
    echo -e $red  " -----------------------------------"$off
    sleep 2
  fi
}
checkinternet
sleep 3
#Authentication
function Authentication {
  curl -XGET http://pubproxy.com/api/proxy?level=anonymous
  curl -XGET http://pubproxy.com/api/proxy?country=JP,SG,
  curl -XGET http://pubproxy.com/api/proxy?google=true
  curl -XGET http://pubproxy.com/api/proxy?post=true
  curl -XGET http://pubproxy.com/api/proxy?cookies=true
  curl -XGET http://pubproxy.com/api/proxy?type=http
  if [[ "$?" != 0 ]]
  then
    echo -e $red" HTTP/1.1 400 Bad Request"
    sleep 2 
    exit
   else
    echo -e $green" HTTP/1.1 200 Success"
  fi
}
Authentication
sleep 3




echo -e $green "╔══╗╔═╦╗╔══╗╔═╗╔═╗╔═╦═╗╔══╗╔══╗╔══╗╔═╗╔═╦╗ " Name = $nama
echo -e $green "╚║║╝║║║║║═╦╝║║║║╬║║║║║║║╔╗║╚╗╔╝╚║║╝║║║║║║║ " Version = $versi
echo -e $green "╔║║╗║║║║║╔╝─║║║║╗╣║║║║║║╠╣║─║║─╔║║╗║║║║║║║ " Author = $pembuat
echo -e $green "╚══╝╚╩═╝╚╝──╚═╝╚╩╝╚╩═╩╝╚╝╚╝─╚╝─╚══╝╚═╝╚╩═╝ " Website = $situs
ip=`curl -s https://api.ipify.org`
echo -e $red("My public IP address is: $ip")
echo -e $off ''
echo -e $red"["$off"1"$red"]" $green"ReverseIPLookUP"
echo -e $red"["$off"2"$red"]" $green"ReverseIP DNS LookUP"
echo -e $red"["$off"3"$red"]" $green"DNS LookUP"
echo -e $red"["$off"4"$red"]" $green"Whois LookUP"
echo -e $red"["$off"5"$red"]" $green"GeoIP LookUP"
echo -e $red"["$off"6"$red"]" $green"DNS Host Search"
echo -e $red"["$off"7"$red"]" $green"MTR Traceroute"
echo -e $red"["$off"8"$red"]" $green"Subnet"
echo -e $red"["$off"9"$red"]" $green"Port Scanner"
echo -e $red"["$off"10"$red"]" $green"PageLinks"
echo -e $red"["$off"11"$red"]" $green"ZoneTransfer"
echo -e $red"["$off"12"$red"]" $green"Find Shared DNS Server"
echo -e $red"["$off"13"$red"]" $green"DomainToIpConverter"
echo -e $red"["$off"14"$red"]" $green"httpheaders"
echo -e $red"["$off"15"$red"]" $green"on-line Test Ping "
echo -e $red"["$off"U"$red"]" $green"Update Tools"
echo -e $red"["$off"E"$red"]" $green"Exit To Tools"$off
read -p "root@information ~#" info

if [ $info = 1 ] || [ $info = 01 ]
then
clear
read -p "Masukkan IP Domain Target ~#" ipdomain
curl http://api.hackertarget.com/reverseiplookup/?q=$ipdomain
echo "$ipdomain"
fi

if [ $info = 2 ] || [ $info = 02 ]
then
clear
read -p "Masukkan IP Domain Target ~#" IPDOMAIN
curl https://api.hackertarget.com/reversedns/?q=$IPDOMAIN
echo "$IPDOMAIN"
fi

if [ $info = 3 ] || [ $info = 03 ]
then
clear
read -p "Masukkan Domain Target ~#" domaintarget
curl http://api.hackertarget.com/dnslookup/?q=$domaintarget
echo "$domaintarget"
fi

if [ $info = 4 ] || [ $info = 04 ]
then
clear
read -p "Masukkan IP ADDRESS Target ~#" $IPaddress
curl http://api.hackertarget.com/whois/?q=$IPaddress
echo "$IPaddress"
fi

if [ $info = 5 ] || [ $info = 05 ]
then
clear
read -p "Masukkan Domain Target ~#" domaintarget
curl http://api.hackertarget.com/geoip/?q=$domaintarget
echo "$domaintarget"
fi

if [ $info = 6 ] || [ $info = 06 ]
then
clear
read -p "Masukkan Domain Target ~#" domain
curl https://api.hackertarget.com/hostsearch/?q=$domain
echo "$domain"
fi

if [ $info = 7 ] || [ $info = 07 ]
then
clear
read -p "Masukkan IP Domain Target ~#" ipdt
curl https://api.hackertarget.com/mtr/?q=$ipdt
echo "$ipdt"
fi

if [ $info = 8 ] || [ $info = 08 ]
then
clear
read -p "Masukkan IP Domain Target ~#" iptargets
curl http://api.hackertarget.com/subnetcalc/?q=$iptargets
echo "$iptargets"
fi

if [ $info = 9 ] || [ $info = 09 ]
then
clear
read -p "Masukkan IP Domain Target ~#" port
curl http://api.hackertarget.com/nmap/?q=$port
echo "$port"
fi

if [ $info = 10 ] || [ $info = 10 ]
then
clear
read -p "Masukkan Domain Target ~#" pagelinks
curl https://api.hackertarget.com/pagelinks/?q=$pagelinks
echo "$pagelinks"
fi

if [ $info = 11 ] || [ $info = 11 ]
then
clear
read -p "Masukkan Domain Target ~#" zone
curl https://api.hackertarget.com/zonetransfer/?q=$zone
echo "$zone"
fi

if [ $info = 12 ] || [ $info = 12 ]
then
clear
read -p "Masukkan Domain Target ~#" shareddns
curl http://api.hackertarget.com/findshareddns/?q=$shareddns
echo "$shareddns"
fi

if [ $info = 13 ] || [ $info = 13 ]
then
clear
read -p "Masukkan Domain Target ~#" ipdomain
curl http://reverseip.domaintools.com/search/?q=$ipdomain
echo "$ipdomain"
fi

if [ $info = 14 ] || [ $info = 14 ]
then
clear
read -p "Masukkan Domain Target ~#" ipdomain
curl https://api.hackertarget.com/httpheaders/?q=$ipdomain
echo "$ipdomain"
fi

if [ $info = 15 ] || [ $info = 15 ]
then
clear
read -p "Masukkan IP Domain Target ~#" ipdomain
curl https://api.hackertarget.com/nping/?q=$ipdomain
echo "$ipdomain"
fi

if [ $info = "U" ] || [ $info = "u" ]
then
clear
chmod +x Update.sh
./Update.sh
fi

if [ $info = "E" ] || [ $info = "e" ]
then
clear
exit
fi