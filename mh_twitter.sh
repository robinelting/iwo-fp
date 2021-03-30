#!/bin/bash
# Descr: This shell script counts the amount of tweets with mental health
# keywords and the amount of tweets without mental health keywords for a
# given file.
#
# Usage: ./mh_twitter.sh FILE
# Or use: sh mh_twitter.sh FILE
#
# Here FILE specifies the file you would like to use. In the case of
# the 2015010101.txt file you should use the script as follows:
#
# ./mh_twitter.sh 2015010101.txt
# (or sh mh_twitter.sh 2015010101.txt)


# Check if file is specified
FILE=$1
if [ -z "$FILE" ]
then
	echo "No file was given. Please specify a file."
	exit
fi

# Check if file exists
if [ ! -e "$FILE" ] 
then
	echo "$FILE does not exist."
	exit
fi

echo "Tweets with mental health keywords:"

# Output each match on a new line, use extended regular expressions, 
# and ignore case distinctions, count the number of tweets with mental
# health keywords and story in variable 'HITS'.
HITS=$(grep -c -E -i "(psychische gezondheid|mentale gezondheid|mentale staat|geestelijke gezondheid|mentaal gezond|geestelijk gezond|mentale gesteldheid|geestelijke gesteldheid|mentale weerbaarheid|geestelijke weerbaarheid|mentale welzijn|geestelijke welzijn)" $FILE)

# Print variable 'HITS'.
echo $HITS

echo "Tweets without mental health keywords:"

# Count the amount of lines/tweets and store in variable 'tweets'.
tweets=$(cat $FILE | wc -l)

# Subtract the amount of tweets with mental health keywords ('HITS')
# from the amount of tweets ('tweets') and store in variable 'without'.
without=$((tweets- HITS))

# Print variable 'without'
echo $without

