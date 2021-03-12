# Create a new directory called missing under /tmp
cd /tmp
mkdir missing

# Use touch to create a new file called semester in missing
file="missing/semester"
touch "$file"

# Write the following into that file, one line at a time:
# #!/bin/sh
# curl --head --silent https://missing.csail.mit.edu
echo 'curl --head --silent https://missing.csail.mit.edu'>> "$file"

# Use chmod to make it possible to run the command ./semester
chmod +x "$file"

# Command that lists files in the following manner:
# Includes all files, including hidden files
# Sizes are listed in human readable format 
# Files are ordered by recency
# Output is colorized
ls -l -a -h --sort=time --color

# command that recursively finds all HTML files in the folder and makes a zip with them
find *.html|xargs zip "htmlfiles.zip"


