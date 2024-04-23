#!/bin/bash

txtred=$(tput setaf 1)
txtgrn=$(tput setaf 2)
txtylw=$(tput setaf 3)
txtblu=$(tput setaf 4)
txtpur=$(tput setaf 5)
txtcyn=$(tput setaf 6)
txtrst=$(tput sgr0)
COLUMNS=$(tput cols)

center() {
	w=$(( $COLUMNS / 2 - 20 ))
	while IFS= read -r line
	do
		printf "%${w}s %s\n" ' ' "$line"
	done
}

centerwide() {
	w=$(( $COLUMNS / 2 - 30 ))
	while IFS= read -r line
	do
		printf "%${w}s %s\n" ' ' "$line"
	done
}

while :
do

clear

echo ""
echo ""
echo "${txtcyn}(please enter the number of your selection below)${txtrst}" | centerwide
echo ""
echo "1.  List all available packages" | center
echo "2.  List all installed packages" | center
echo "3.  Clean packages from cache" | center
echo "4.  List installed and available kernel packages" | center
echo "5.  Search for a package" | center
echo "6.  ${txtpur}Return to Main Menu${txtrst}" | center
echo "7.  ${txtred}Shut down${txtrst}" | center
echo ""

read usermenuchoice
case $usermenuchoice in

1 )
	clear && echo "" && echo "Below are the available packages:  ${txtcyn}" | centerwide && echo ""
	yum list availabe
		echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

2 )
	clear && echo "" && echo "Below are the installed packages:  ${txtcyn}" | centerwide && echo ""
	yum list installed
		echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

3 )
	clear && echo "" && echo "Deleting all packages saved in cache:  ${txtcyn}" | centerwide && echo ""
	yum clean packages
		echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;


4 )
	clear && echo "" && echo "Below are the installed & available packages:  ${txtcyn}" | centerwide && echo ""
	yum list all
		echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

5 )
	clear && echo "" && echo "Enter package name you want to search" | centerwide
	read package_name
	echo ""
	echo "${txtgrn}Following results for $package_name: ${txtrst}" | center && yum search $package_name  || echo "${txtred}Failed to search the package.${txtrst}" | center
	echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

6 )
	clear && echo "" && echo "Are you sure you want to return to the main menu? ${txtcyn}y/n${txtrst}" | centerwide && echo ""
	read exitays
	case $exitays in
		y | Y )
			clear && exit
		;;
		n | N )
			clear && echo "" && echo "Okay. Nevermind then." | center && echo "" && echo "${txtcyn}(Press ENTER to continue.)${txtrst}" | center && read
		;;
		* )
			clear && echo "" && echo "${txtred}Please make a valid selection.${txtrst}" | center && echo "" && echo "${txtcyn}(Press ENTER to continue.)${txtrst}" | center && read
		;;
	esac
;;

7 )
	clear && echo "" && echo "Are you sure you want to shut down? ${txtcyn}y/n${txtrst}" | centerwide && echo ""
	read shutdownays
	case $shutdownays in
		y | Y )
			clear && shutdown -h now
		;;
		n | N )
			clear && echo "" && echo "Okay. Nevermind then." | center && echo "" && echo "${txtcyn}(Press ENTER to continue.)${txtrst}" | center && read
		;;
		* )
			clear && echo "" && echo "${txtred}Please make a valid selection.${txtrst}" | center && echo "" && echo "${txtcyn}(Press ENTER to continue.)${txtrst}" | center && read
		;;
	esac
;;

* )
	clear && echo "" && echo "${txtred}Please make a valid selection.${txtrst}" | center && echo "" && echo "${txtcyn}(Press ENTER to continue.)${txtrst}" | center && read
;;

esac

done

