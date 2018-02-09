#!/bin/bash
function randname {
    echo `cat /usr/share/dict/words | grep "^[^']*$" | tr '[:upper:]' '[:lower:]' | shuf | head -n 1 | md5sum | head -c 6`
}
words=`cat /usr/share/dict/words | grep "^[^']*$" | tr '[:upper:]' '[:lower:]' | shuf | head -n 60`
search=`echo $words | tr -s ' \011' '\012' | head -n 5`
function branch {
    declare cwd=$1
    shift
    declare next=$1
    shift
    printf "remaining words: $# \r"
    if [ ! -z $next ]; then
        roll=$(( RANDOM % 3 ))
        if [ $roll -eq 0 ]; then
            name=$cwd/`randname`
            mkdir -p $name
            branch $name $next $@
        else
            echo $next > $cwd/`randname`
            branch $cwd $@
        fi
    fi
}
rm -rf ./forest
mkdir -p ./forest
branch ./forest $words
echo

printf "Look for these 5 words\nPut the filename in which they appear\n\n" >> search.txt
for word in $search; do
    printf "$word : \n" >> search.txt
done