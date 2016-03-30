#!/bin/sh

# My Way Super Kick Ass Script Name Here v0.1 

# cRedz / website.com



initMain(){

setTerminal
resizeWindow
setWindowTitle
setPermissions
setDependencies
checkDependencies
setDefaults

menuMain

}


setPermissions(){

blank=""

}


setDependencies(){

pathDependencyFile1="/usr/bin/DependencyFile1"

}


checkDependencies(){

if [ -f $pathDependencyFile1 ];
then
   statusDependencyFile1="OK"
else
   statusDependencyFile1="NA"
fi

}


downloadDependencies(){

blank=""

}


showDependencies(){

banner
navBar

echo ""
echo "List of File Dependencies Needed"
echo ""
echo "$pathDependencyFile1 - Status: $statusDependencyFile1"
echo ""
echo ""

echo "Press ENTER to continue...."

read pause

}


setDefaults(){

baseVersion="0.1"
tempDirectory=""
runDirectory="$PWD"

count="0"
padding=""

}


resizeWindow(){

# From sample: printf '\033[8;32;114t'
# Change WIDTH (W) ([8;WW)
# Change HEIGHT (H) (;HHHt')

printf '\033[8;32;114t'

}


setWindowTitle(){

title='echo -ne "\033]0;My Way Super Kick Ass Script Name Here v0.1 / cRedz / website.com\007"'

$title

}


setTerminal(){

terminal="gnome-terminal -x"
#terminal="konsole -e"
#terminal="xterm -e"

}

banner(){

clear
echo "My Way Super Kick Ass Script Name Here v$baseVersion"
echo ""

}


navBar(){

echo "------------------------------------------------------------------------------------------------------------------"
echo "[M] Menu   [1] Option 1   [2] Option 2   [3] Option 3   [4] Option 4   [5] Option 5   [6] Option 6   [X] Exit"
echo "------------------------------------------------------------------------------------------------------------------"
echo ""

}


bannerExit(){

clear
echo "Cool Message Here"
echo ""
echo "cRedz / website.com"
echo ""
echo ""

}


tempFolderCreate(){

#mkdir "$tempDirectory"
#mkdir "$runDirectory"
blank=""

}


tempFolderDestroy(){

#rm "$tempDirectory"
#rm "$runDirectory"
blank=""

}


addPadding(){

if (($count > 9999)); then

padding=""

fi

if (($count > 999)); then

padding=""

fi

if (($count > 99)); then

padding="0"

fi

if (($count < 10)); then

padding="000"

fi

if (($count > 9)); then

padding="00"

fi

if (($count > 99)); then

padding="0"

fi

if (($count > 999)); then

padding=""

fi

if (($count > 9999)); then

padding=""

fi

}


menuMain(){

banner
navBar

echo "Put a nice menu with some options here"
echo ""
echo ""
echo ""
echo "1) Option 1"
echo "2) Option 2"
echo "3) Option 3"
echo "4) Option 4"
echo "5) Option 5"
echo "6) Option 6"
echo ""
echo ""

read getVariable

case "$getVariable" in

"")
menuMain
;;

"M" | "m")
menuMain
;;

"X" | "x")
bannerExit
exit
;;

"1")
echo "Option 1"
echo ""
echo "Press ENTER to continue..."
echo ""
echo ""
read pause
# DO STUFF HERE
menuMain
;;

"2")
echo "Option 2"
echo ""
echo "Press ENTER to continue..."
echo ""
echo ""
read pause
# DO STUFF HERE
menuMain
;;

"3")
echo "Option 3"
echo ""
echo "Press ENTER to continue..."
echo ""
echo ""
read pause
# DO STUFF HERE
menuMain
;;

"4")
echo "Option 4"
echo ""
echo "Press ENTER to continue..."
echo ""
echo ""
read pause
# DO STUFF HERE
menuMain
;;

"5")
echo "Option 5"
echo ""
echo "Press ENTER to continue..."
echo ""
echo ""
read pause
# DO STUFF HERE
menuMain
;;

"6")
echo "Option 6"
echo ""
echo "Press ENTER to continue..."
echo ""
echo ""
read pause
# DO STUFF HERE
menuMain
;;

*)
menuMain
;;

esac

menuMain

}



initMain


