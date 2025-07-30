#!/bin/bash

# NOT the catfetch!! 
# don't change if you want it to work :>

# main varibles
kr=$(uname -r)
wm=${XDG_CURRENT_DESKTOP:-"not detected :<"}
#du=$(uptime -p)
up=${du:2}
#dp=$(lscpu | grep "Model name:")
#cp=${dp:14}
hn=$(hostname)
mu=$(playerctl metadata --format "{{artist}} - {{title}}" 2>/dev/null || echo "not playing")

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
