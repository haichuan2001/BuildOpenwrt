#########################################################################
# File Name: diffconfig.sh
# Author: Carbon (ecras_y@163.com)
# Description: feel free to use
# Created Time: 2022-07-26 10:58:29 CST
# Modified Time: 2022-07-26 12:15:18 CST
#########################################################################


#!/bin/bash

IFS_old=$IFS
IFS=$'\n'


[ "$#" != "2" ]&& {
    echo "input error"
    exit 0
}

var1=$1
var2=$2
ext1="${var1##*.}"
ext2="${var2##*.}"
src1="${var1%%.*}"
src2="${var2%%.*}"

file1="$src1.tmp.$ext1"
file2="$src2.tmp.$ext2"
common="common.$ext1"

[  -e "$common" ] && {
    rm -f $common
}

# remove empty spaces
sed '/^\s*$/d' $1 > $file1
sed '/^\s*$/d' $2 > $file2

for text1 in `cat  $file1`
do
    for text2 in `cat $file2`
    do
        if [ "$text1" =  "$text2" ]
        then
            echo $text1 >> $common
            # echo $text2
        fi
    done
done

filter=`sed 's/ /|/g' $common`

result1="$src1.out.$ext1"
result2="$src2.out.$ext2"

grep -vE "$filter" $file1 > $result1
grep -vE "$filter" $file2 > $result2

# clean up
[  -e "$file1" ] && {
    rm -f $file1
}
[  -e "$file2" ] && {
    rm -f $file2
}

IFS=$IFS_old

