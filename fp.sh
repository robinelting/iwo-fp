#!/bin/bash
# Descr: This shell script counts all occurences of the article 'de' in
#        theDutch Wikipedia page of the Rijksuniversiteit Groningen
#		 (https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen).
#
# Usage: ./m5.sh FILE
# Or use: sh m5.sh FILE
#
# Here FILE specifies the file you would like to use. In the case of
# the rug.txt file you should use the script as follows:
#
# ./fp.sh rug.txt
# (or sh m5.sh rug.txt)


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

# Output each match on a new line and ignore case distinctions,
# count the number of lines.
echo "Tweets with mental health keywords:"
HITS=$(grep -c -E -i "(psychische gezondheid|mentale gezondheid|mentale staat|geestelijke gezondheid|mentaal gezond|geestelijk gezond|mentale gesteldheid|geestelijke gesteldheid|mentale weerbaarheid|geestelijke weerbaarheid|mentale welzijn|geestelijke welzijn)" $FILE)
echo $HITS

echo "Tweets without mental health keywords:"
tweets=$(cat $FILE | wc -l)
without=$((tweets- HITS))
echo $without
