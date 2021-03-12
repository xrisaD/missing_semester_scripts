#!/bin/bash
marco () {
	path=$(pwd)
	echo $path > /tmp/.missingsemester.txt 
}
marco
