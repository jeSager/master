#!/bin/bash

RUN=1
TOTAL_TIME=
OUTPUT_DIR=./outputs
COMPILER_OUT="$OUTPUT_DIR/z_compiler.txt"

f_Label () {
  if [[ $2 == "now"  ]]; then
    time_format="  $(date +%X)"
  else
    time_format=$(echo "scale=4; ($(date +%s%N) - $BEGIN) / 1000000000" | bc)
    time_format="$time_format seconds"
  fi
  printf -v line "%.0s_" {1..70}
  printf -v dots "%.0s." {1..70}
  printf "%s\n\n%-57s%s\n%s\n\n" "$line" "$1" "$time_format" "$dots"
}


  BEGIN=$(date +%s%N)
  f_Label "BEGIN" "now"
  f_Label "CREATE TARBALL"
  ./zaZipUpScript.txt
  f_Label "CREATE COMPILE DIRECTORY"
  ./zbFileCopyScript.txt
  f_Label "ATTEMPT COMPILE"
  echo "Decend into 'testdirectory' directory"
  cd testdirectory
  for item in *
  do
    echo "Compiling $item"
    cd $item
    f_Label "COMPILER OUT" "now"
    make -f ../../makefile
    SUCCESS=false
    if [ -e Aprog ]; then
      SUCCESS=true;
    else
      echo "The attempt to compile $item failed"
      echo "The execution script will not be run"
    fi
    echo "Return to the 'testdirectory' directory"
    cd ..
  done
  echo "Return from the 'testdirectory' directory"
  cd ..
  if [[ $SUCCESS == true ]]; then
    f_Label "ATTEMPTING EXECUTION"
    ./zdExecuteScript.txt
  fi
  clear
echo "Exited Script Successfully"
