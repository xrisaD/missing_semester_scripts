#!/bin/bash

#Bash functions marco and polo that do the following. Whenever you execute #marco the current working directory should be saved in some manner, then #when you execute polo, no matter what directory you are in, polo should #cd you back to the directory where you executed marco.

marco () {
	path=$(pwd)
	echo $path > /tmp/missingsemester.txt 
}

polo () {
	cd
	path=$(cat /tmp/missingsemester.txt)
	cd $path	
}

