#!/bin/bash

# NOT the catfetch!!
# by tasory ( github.com/tasory )

# main varibles
kr=$(uname -r)
wm=${XDG_CURRENT_DESKTOP:-"not detected :<"}
hn=$(hostname)
mu=$(playerctl metadata --format "{{artist}} - {{title}}" 2>/dev/null || echo "not playing")

# this options is used in catfeth-ts
# you can try to add it to fetch and customize fetch
#du=$(uptime -p) 			# don't use it, it displays 'up 9 hours 29 minutes' (time is random) 
#up=${du:2} 				# this is uptime, just time, without up 
#dp=$(lscpu | grep "Model name:") 	# don't use it, it displays long string with information unnecessary for fetch
#cp=${dp:14}				# This is cpu name

# colors
white="\e[97m"
gray="\e[90m"
def="\e[0m"

# print vertical fetch
print-vertical(){
	echo 
	echo -e "		   /\    "   
	echo -e "		  /  \   "   
	echo -e "		 /    \  "  
	echo -e "		/_-''-_\ " 
	echo 
	echo -e "	${white}hn $hn ${def}"
	echo -e "	${white}kr $kr ${def}"
	echo -e "	${white}wm $wm ${def}"
	echo -e "	${white}mu $mu ${def}\n"
}

# print horisontal fetch
print-horisontal() {
	echo -e "${grey}      /\        ${def} ${white} ┌─ hn $hn ${def}"
	echo -e "${grey}     /  \       ${def} ${white} ├─ kr $kr ${def}"
	echo -e "${grey}    /    \      ${def} ${white} ├─ wm $wm ${def}"
	echo -e "${grey}   /_-''-_\     ${def} ${white} └─ mu $mu ${def}"
}

# logic
while true; do
    case "$1" in
	    v) print-vertical; exit 1;;
	    *) print-horisontal; exit 1 ;;
    esac
done
