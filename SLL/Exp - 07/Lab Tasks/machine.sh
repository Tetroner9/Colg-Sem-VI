# language: bash
#!/bin/bash

machine()
{
	echo Machine:; uname -a
	echo Current directory:; pwd
	echo Current user:; whoami
	echo Users:; w
	echo Date:; date
	echo Status:; uptime
	echo Filesystem:; df -h
}
machine
