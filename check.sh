 #!/bin/bash
 count=0
 $1 1>stdout.txt 2>stderr
 while [ $? -eq 0 ]; do
 	count=$((count+1))
	$1 1>stdout 2>stderr
 done
 echo "stdout: $(cat stdout)"
 echo "stderr: $(cat stderr)"
 echo "$count"
