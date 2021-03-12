#!/bin/bash
polo () {
	cd
	path=$(cat /tmp/.missingsemester.txt)
	cd $path	
}
polo
