#! /bin/bash

FILE_1=newfile.txt
FILE_2=anotherfile.txt

fun () {
  while [ -e $FILE_1 ];do
    if [ -e $FILE_2 ]; then
      fuser -s -k -TERM $FILE_1
      rm $FILE_1
    fi
  done
}


echo "This is a $FILE_1 for fun()." > $FILE_1

echo "If you create $FILE_2 in another terminal window, " >> $FILE_1
echo "this $FILE_1 will no longer be lessed, but removed." >> $FILE_1

fun & less $FILE_1

rm $FILE_2

echo "This is the end of the fun!"
reset

