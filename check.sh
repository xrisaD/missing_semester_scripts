 #!/bin/bash
 # a bash script that runs the given script until it fails and captures its standard output and error streams to files and prints everything at the end (report how many runs it took for the script to fail).
 count=0
 $1 1>stdout.txt 2>stderr
 while [ $? -eq 0 ]; do
 	count=$((count+1))
	$1 1>stdout 2>stderr
 done
 echo "stdout: $(cat stdout)"
 echo "stderr: $(cat stderr)"
 echo "$count"
