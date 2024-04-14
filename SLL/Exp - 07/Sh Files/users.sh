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
echo "1.  Create a user" | center
echo "2.  Change the group for a user" | center
echo "3.  Create a group" | center
echo "4.  Delete a user" | center
echo "5.  Change a password" | center
echo "6.  ${txtpur}Return to Main Menu${txtrst}" | center
echo "7.  ${txtred}Shut down${txtrst}" | center
echo ""

read usermenuchoice
case $usermenuchoice in

1 )
	clear && echo "" && echo "Please enter the new username below:  ${txtcyn}(NO SPACES OR SPECIAL CHARACTERS!)${txtrst}" | centerwide && echo ""
	read newusername
	echo "" && echo "Please enter a group for the new user:  ${txtcyn}(STILL NO SPACES OR SPECIAL CHARACTERS!)${txtrst}" | centerwide && echo ""
	read newusergroup
	echo "" && echo "What is the new user's full name?  ${txtcyn}(YOU CAN USE SPACES HERE IF YOU WANT!)${txtrst}" | centerwide && echo ""
	read newuserfullname
	echo "" && echo ""
	groupadd $newusergroup
	useradd -g $newusergroup -c "$newuserfullname" $newusername && echo "${txtgrn}New user $newusername created successfully.${txtrst}" | center || echo "${txtred}Could not create new user.${txtrst}" | center
	echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

2 )
	clear && echo "" && echo "Which user needs to be in a different group? ${txtcyn}(USER MUST EXIST!)${txtrst}" | centerwide && echo ""
	read usermoduser
	echo "" && echo "What should be the new group for this user?  ${txtcyn}(NO SPACES OR SPECIAL CHARACTERS!)${txtrst}" | centerwide && echo ""
	read usermodgroup
	echo "" && echo ""
	groupadd $usermodgroup
	usermod -g $usermodgroup $usermoduser && echo "${txtgrn}User $usermoduser added to group $usermodgroup successfully.${txtrst}" | center || echo "${txtred}Could not add user to group. Please check if user exists.${txtrst}" | centerwide
	echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

3 )
	clear && echo "" && echo "Please enter a name for the new group below:  ${txtcyn}(NO SPACES OR SPECIAL CHARACTERS!)${txtrst}" | centerwide && echo ""
	read newgroup
	echo "" && echo ""
	groupadd $newgroup && echo "${txtgrn}Group $newgroup created successfully.${txtrst}" | center || echo "${txtred}Failed to create group. Please check if group already exists.${txtrst}" | centerwide
	echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

4 )
	clear && echo "" && echo "Please enter the username to be deleted below:  ${txtcyn}(THIS CANNOT BE UNDONE!)${txtrst}" | centerwide && echo ""
	read deletethisuser
	echo "" && echo "${txtred}ARE YOU ABSOLUTELY SURE YOU WANT TO DELETE THIS USER? SERIOUSLY, THIS CANNOT BE UNDONE! ${txtcyn}y/n${txtrst}" | centerwide
	read deleteuserays
	echo "" && echo ""
	case $deleteuserays in
		y | Y )
			userdel -rf $deletethisuser && echo "${txtgrn}User $deletethisuser deleted successfully." | center || echo "${txtred}Failed to delete user. Please check username and try again.${txtrst}" | centerwide
		;;
		n | N )
			echo "Okay. Nevermind then." | center
		;;
		* )
			echo "${txtred}Please make a valid selection.${txtrst}" | center
		;;
	esac
	echo "" && echo "${txtcyn}(press ENTER to continue)${txtrst}" | center
	read
;;

5 )
	clear && echo "" && echo "Which user's password should be changed?" | centerwide
	read passuser
	echo ""
	passwd $passuser && echo "${txtgrn}Password for $passuser changed successfully.${txtrst}" | center || echo "${txtred}Failed to change password.${txtrst}" | center
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

