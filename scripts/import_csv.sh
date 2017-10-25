#!/bin/bash
################################################################################
#                         THE CSV TABLE MAKER 9000 SERIES
#                                                                 import_csv.sh
# ==============================================================================
#
#   Description:
#     - This script requires a csv file from Exel as an argument
#     - It uses your csv file argument to complete these tasks:
#         1.  Create a new table in a predefined database
#         2.  Uses mysql's Load Data statement on your csv file argument
#             to populate this new table
#         3.  When successful, prints the table to the screen
#
#   Example Input:
#     ./import_csv.sh example.csv
#
#   Intended Output:
#     - Once your new DB table has been created, a SELECT * statement will
#       display your new table on the terminal screen
#     - Any other output indicates failure
#
#   Note:
#     - You cannot execute a script that doesn't have executable permissions:
#         chmod 775 import_csv.sh
#
#   Last Modified:  Thu Jun  1 00:25:54 EDT 2017
################################################################################



#======================================
# Require a file (that exists)
if [ -e $1 ]; then


  #======================================
  # The script ASSUMES the following DB is created;
  #   I.e.: This script does not create DBs; You will be punted, ungracefully.
  DB="csv"



  #======================================
  # This is a DB user that has permission to create tables in our DB
  DB_USER="root"
  DB_PSSWD="whatever"
  DB_CONF=$'[client]\nuser='$DB_USER$'\npassword='$DB_PSSWD


  #======================================
  # Mysql-server will be accessed this way:
  #   This connection is used for our main operations:
  #     1. Creating our new db table
  #     2. Loading our csv file to this new table
  #     3. Printing our DB table to the screen
  MYSQL='mysql --defaults-extra-file=<(echo "$DB_CONF")'



  #======================================
  # The script takes a *.csv file as an arg
  # We will need unique name for our new table:
  #   - We use the arg basefile name with date-time (over a non-descriptive-uuid)
  #   - Two nanosecond places are used in case someone runs the script too quickly
  TBL="${1::-4}_$(date '+%b%d_%Y_%H%M%S%2N')"



  #======================================
  # Characters Per Field in our Table
  #   Meh, could be much larger, but whatevs...
  MAX_CHAR=50



  #======================================
  # In an attempt to sabatoge our humble operation, the Evil Bill Gates and his
  #   minions have hidden disgusting carriage-returns -- not to mention the
  #   vile byte-order-mark -- all within csv file we're importing,
  # It's definitly a conspiracy:  another attempt to taint our beautiful *Nix OS;
  #   No doubt!
  # Ah, yes, but their plans have been foiled!  Not today, Billy-boy...  not today
  #
  # Anywho, let's remove the MS garbage so we don't need to think about it
  #   when we import the file.  It can't pop up if it's not there.  Also, I think
  #   that ^M char will trigger an <Enter> keypress at times.


  # Here it is:
  #   The best damm name for a csv string any undergrad money could buy!
  CSV="$(tr '\r' '\n' < $1)"
  CSV="$(echo "$CSV" | sed '1s/^\xEF\xBB\xBF//')"

  # BAM!!!  *Nixed it!  (( fixed it ))
  echo "$CSV" > $1



  #======================================
  # Let's count our attributes... (columns)
  #   Note: Right now, we're assuming this isn't a tainted file
  #         I.e.: There's definitly output on the first line
  #               And that output always has the correct amount of commas
  LINE_ONE=(${CSV[@]})
  NUM_OF_COLS=$(( 1 + $(echo $LINE_ONE | tr -cd , | wc -c) ))



  #======================================
  # This string WILL make the new table... in time...
  CREATE="CREATE TABLE $DB.$TBL("



  #======================================
  # This loop constructs our column labels
  #   In the future, if you'd like your table column names to be determined by
  #     the first row of the imported csv, this could be a good place to start.
  for num in $(seq 1 $NUM_OF_COLS); do
    CREATE+="Col_$num VARCHAR($MAX_CHAR),"
  done



  #======================================
  # Now just remove that last comma, and finish the statement.
  CREATE=${CREATE::-1}
  CREATE+=");"



  #======================================
  # The time has come!  Create the table!!  Release the Kraken!!!
  echo $CREATE | eval $MYSQL



  #======================================
  # This ain't over yet.  We finally have a table, but there's nothing in it.
  #  Well, let's just concatenate our LOAD command here:
  LOAD="LOAD DATA LOCAL INFILE '$1' "
  LOAD+="INTO TABLE $DB.$TBL "
  LOAD+="FIELDS TERMINATED BY ','"
  LOAD+="LINES TERMINATED BY '\n';"



  #======================================
  # We could give up now?  Just throw it all away for nothin, eh?
  #   ... or should we execute the LOAD command and populate the table?
  echo $LOAD | eval $MYSQL



  #======================================
  # WAT?!?  We're not done ?!?!
  # Meh, I suppose you want proof now????
  # Can't just take my word for it??
  # Okay, okay.  We'll print the table... soon, not yet.

  # First, an extra query to advise you on how many useless tables you've made
  # We'll have to get rid of the first line of the DB request output.
  #   I just want answers
  QTY="$(echo -n "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema ='$DB';" | eval $MYSQL)"
  QTY="$(echo "$QTY" | head -2 | tail -1)"

  # Nothin to see here, folks
  echo
  echo
  echo -n "You have successfully added table number $QTY "
  echo "to the \"$DB\" database."
  echo
  echo "NEW TABLE NAME:  $TBL"
  echo "_______________________________________________________________"
  echo
  echo "SELECT * FROM $DB.$TBL" | eval $MYSQL


#======================================
# Ah, the moment we've been waiting for...
else
  echo
  echo "WAT?!?!?!?!"
  sleep 1
  echo "  You know that file ain't no good, brah."
  sleep 1
  echo "  I need a file.  A real one."
  echo
  sleep 2
  echo "- I'm out"
fi


# FIN =)
################################################################################
#                                                                              #
#                                                                              #
#                                          ,_-=(!7(7/zs_.                      #
#                                       .='  ' .`/,/!(=)Zm.                    #
#                         .._,,._..  ,-`- `,\ ` -` -`\\7//WW.                  #
#                    ,v=~/.-,-\- -!|V-s.)iT-|s|\-.'   `///mK%.                 #
#                  v!`i!-.e]-g`bT/i(/[=.Z/m)K(YNYi..   /-]i44M.                #
#                v`/,`|v]-DvLcfZ/eV/iDLN\D/ZK@%8W[Z..   `/d!Z8m                #
#               //,c\(2(X/NYNY8]ZZ/bZd\()/\7WY%WKKW)   -'|(][%4.               #
#             ,\\i\c(e)WX@WKKZKDKWMZ8(b5/ZK8]Z7%ffVM,   -.Y!bNMi               #
#             /-iit5N)KWG%%8%%%%W8%ZWM(8YZvD)XN(@.  [   \]!/GXW[               #
#            / ))G8\NMN%W%%%%%%%%%%8KK@WZKYK*ZG5KMi,-   vi[NZGM[               #
#           i\!(44Y8K%8%%%**~YZYZ@%%%%%4KWZ/PKN)ZDZ7   c=//WZK%!               #
#          ,\v\YtMZW8W%%f`,`.t/bNZZK%%W%%ZXb*K(K5DZ   -c\\/KM48                #
#          -|c5PbM4DDW%f  v./c\[tMY8W%PMW%D@KW)Gbf   -/(=ZZKM8[                #
#          2(N8YXWK85@K   -'c|K4/KKK%@  V%@@WD8e~  .//ct)8ZK%8`                #
#          =)b%]Nd)@KM[  !'\cG!iWYK%%|   !M@KZf    -c\))ZDKW%`                 #
#          YYKWZGNM4/Pb  '-VscP4]b@W%     'Mf`   -L\///KM(%W!                  #
#          !KKW4ZK/W7)Z. '/cttbY)DKW%     -`  .',\v)K(5KW%%f                   #
#          'W)KWKZZg)Z2/,!/L(-DYYb54%  ,,`, -\-/v(((KK5WW%f                    #
#           \M4NDDKZZ(e!/\7vNTtZd)8\Mi!\-,-/i-v((tKNGN%W%%                     #
#           'M8M88(Zd))///((|D\tDY\\KK-`/-i(=)KtNNN@W%%%@%[                    #
#            !8%@KW5KKN4///s(\Pd!ROBY8/=2(/4ZdzKD%K%%%M8@%%                    #
#             '%%%W%dGNtPK(c\/2\[Z(ttNYZ2NZW8W8K%%%%YKM%M%%.                   #
#               *%%W%GW5@/%!e]_tZdY()v)ZXMZW%W%%%*5Y]K%ZK%8[                   #
#                '*%%%%8%8WK\)[/ZmZ/Zi]!/M%%%%@f\ \Y/NNMK%%!                   #
#                  'VM%%%%W%WN5Z/Gt5/b)((cV@f`  - |cZbMKW%%|                   #
#                     'V*M%%%WZ/ZG\t5((+)L\'-,,/  -)X(NWW%%                    #
#                          `~`MZ/DZGNZG5(((\,    ,t\\Z)KW%@                    #
#                             'M8K%8GN8\5(5///]i!v\K)85W%%f                    #
#                               YWWKKKKWZ8G54X/GGMeK@WM8%@                     #
#                                !M8%8%48WG@KWYbW%WWW%%%@                      #
#                                  VM%WKWK%8K%%8WWWW%%%@`                      #
#                                    ~*%%%%%%W%%%%%%%@~                        #
#                                       ~*MM%%%%%%@f`                          #
#                                            '''''                             #
#                                                                              #
#                                                                              #
################################################################################
################################################andnowyouknowwhyslycliguysaysbye
