#!/bin/bash

retfunc()
{
	echo "This is retfunc()"
	return 1
}

exitfunc()
{
	echo "This is exitfunc()"
	exit 1
}
retfunc
echo "We are still here"
exitfunc
echo "We will never see this"
