#!/bin/bash

machine()
{
	echo -e "\e[29;44m****** HOSTNAME INFORMATION *****\e[0m"
	hostnamectl
	echo " "
        echo -e "\e[29;44m****** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
	df -h
	echo " "
        echo -e "\e[29;44m****** FREE & USED MEMORY *****\e[0m"
	free
	echo " "
        echo -e "\e[1;32m****** SYSTEM UPTIME $ LOAD *****\e[0m"
	uptime
	echo " "
        echo -e "\e[29;44m****** CURRENTLY LOGGED-IN USERS *****\e[0m"
	who
	echo " "
        echo -e "\e[29;44m****** TOP 5 MEMORY-CONSUMING PROCESSES *****\e[0m"
	ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
	echo " "
	echo -e "\e[1;32Done.\e[0m"
}

machine
