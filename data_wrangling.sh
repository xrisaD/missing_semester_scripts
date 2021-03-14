# Find the number of words (in /usr/share/dict/words) that contain at least three as and don’t have a 's ending.
cat /usr/share/dict/words | tr '[:upper:]' '[:lower:]' | grep .*a.*a.*a.*[^a]$ | sort |  wc -l

# What are the three most common last two letters of those words?
cat /usr/share/dict/words | tr '[:upper:]' '[:lower:]' | grep .*a.*a.*a.*[^a]$ | rev | cut -c -2 | rev | sort | uniq -c | sort -nk1,1 | tail -n2 | awk '{print $2}'

# How many of those two-letter combinations are there? 
cat /usr/share/dict/words | tr '[:upper:]' '[:lower:]' | grep .*a.*a.*a.*[^a]$ | rev | cut -c -2 | rev | sort | uniq -c | wc -l

# which combinations do not occur?
echo {a..z}{a..z} {a..z}"'" "'"{a..z} | tr " " "\n" | sort >file1.txt
cat /usr/share/dict/words | tr '[:upper:]' '[:lower:]' | grep .*a.*a.*a.*[^a]$ | rev | cut -c -2 | rev | sort | uniq -c | awk '{print $2}' | sort >file2.txt
comm file1.txt file2.txt | awk '{print $1}'







