#!/bin/bash
################################################################################
#                 _____    ____  __  __ _____ _____ _      ______
#                / ____|  / __ \|  \/  |  __ \_   _| |    |  ____|
#               | |      | |  | | \  / | |__) || | | |    | |__
#               | |      | |  | | |\/| |  ___/ | | | |    |  __|
#               | |____  | |__| | |  | | |    _| |_| |____| |____
#                \_____|__\____/|_| _|_|_|   |_____|______|______|
#                     / __ \   | \ | |
#                    | |  | |  |  \| |
#                    | |  | |  | . ` |
#                    | |__| |  | |\  |
#                     \____/   |_| \_| _____  _____ _______ ______
#                      \ \        / / |  __ \|_   _|__   __|  ____|
#                       \ \  /\  / /  | |__) | | |    | |  | |__
#                        \ \/  \/ /   |  _  /  | |    | |  |  __|
#                         \  /\  /    | | \ \ _| |_   | |  | |____
#                          \/  \/     |_|  \_\_____|  |_|  |______|
#                                                          ___________________
#                                                         < For Linux Systems >
#  __________________                                       ------------------
# /     Version      \                                             \
# \   One Point Moo! /                                              \ .--.
#  ------------------                                                |o_o |
#          \   ^__^                                                  |:_/ |
#           \  (oo)\_______                                         //   \ \
#              (__)\       )\/\                                    (|     | )
#                  ||----w |                                      /'\_   _/`\
#                  ||     ||                                      \___)=(___/
################################################################################
#
# Title:        Compile On Write
#
# File:         cow.sh
#
# Author:       J.E.Sager
#
# Modified:     Fri Aug  5 20:14:05 EDT 2016
#
# Description:  *  Uses 'watch' and 'less' to display compiler output as source
#                  files are modified.
#               *  Compiles without flipping the most important output
#                  haphazardly across the screen.
#               *  Assists with the asynchronous use of a text editor.
#               *  Useful for:  Python, Java, C, C++
#
# Arguments:    Method 1:  -f fileName
#                  *  Specify a file that lists arguments in the order
#                     noted below, in Method 2.
#               Method 2:
#                  *  The first argument is the compile command.
#                       - Use "quotes" on the console.
#                  *  Additional args are files to be watched for modification.
#
# Caveats:      As when using watch, ^C terminates the script.
#               For best results, ^C while the status reads "Waiting..."
#               If a file is too small, "Compiling" status may not be visible.
#
################################################################################

#   $# is the number of args

# the compile command
COMMAND=$1

# file to check modification
MOD_FILE=$2

# last compile time
COMPILE_TIME=""

# last modification time
MOD_TIME=""

# this scripts output
STATUS="Status:  Waiting . . ."

echo $STATUS > scriptsOut.txt
sleep 1.5
# purpose of the script:  view this on the screen
# watch --no-title less scriptsOut.txt &

# loop that (re)runs compile command when file is saved
while true;do
  sleep 1
  MOD_TIME=$(date -r $MOD_FILE '+%r')
  if [ "$COMPILE_TIME" != "$MOD_TIME" ]
  then
    COMPILE_TIME=$MOD_TIME
    cat scriptsOut.txt | sed '1s/Waiting/Compiling/' > temp
    cp temp scriptsOut.txt
    $COMMAND > temp 2>&1
    STATUS="Status:  Waiting . . .   "
    STATUS+="Displaying results from file modified at $MOD_TIME"
    echo $STATUS > scriptsOut.txt
    cat temp >> scriptsOut.txt
    echo -e "\n\nCOWB COMPLETED SUCCESSFULLY" >> scriptsOut.txt
    rm temp
  fi
done


# To do:
# 1. quit watch on 'q'
#    - try an until loop?
# 2. accept an array of files to watch
#    - file with newest mod_time will become mod_file
# 3. take input from file
#    - check if files exist
#    - if[ $1 == -f ], else(do what we already have)
# 4.  list nanoseconds of each compile and average compile time in nanoseconds
