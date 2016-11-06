#!/bin/bash

OUTPUT_DIR=./outputs
COMPILER_OUT="$OUTPUT_DIR/zoutput_compiler.txt"
HERE=$(pwd)
SESSION=compile
RUN=1

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

# does not start tmux if it's already running
if [[ -z $TMUX ]]; then
  tmux new-session -s ${SESSION} -n vim -d
  tmux send-keys -t ${SESSION} 'cd ' $HERE C-m
  tmux send-keys -t ${SESSION} 'cd $(ls -d mydirectory/*) && vim "+set hidden" "+set wildmenu" "+set wildcharm=<tab>" "+nnoremap <tab> :buffer <tab>" "+set noswapfile" "+nnoremap <tab> :edit <tab>" "+nnoremap <S-tab> :bp<cr>" "+cnoremap <esc> <C-u><esc>" .' C-m
  tmux split -h
  tmux select-pane -t 1
  tmux send-keys -t ${SESSION} 'cd ' $HERE C-m
  tmux send-keys -t ${SESSION} "./tmux_wrapper.sh" C-m
  tmux bind-key -n F2 send-keys -t 1 C-m
  tmux bind-key -n F4 select-pane -t :.+
  tmux bind-key -n C-j send-keys -t :.+ j \;
  tmux bind-key -n C-k send-keys -t :.+ k \;
  tmux bind-key -n C-n send-keys -t :.+ Tab \;
  tmux bind-key -n C-p send-keys -t :.+ ';bp' C-m \;
  tmux bind u set -g status
  tmux set -g mouse-select-pane on
  tmux set -g mouse-resize-pane on
  tmux set -g status off 2>&1
  #best noswapfile in the edit window to use this option
  tmux bind-key -n F9 confirm-before kill-session
  tmux select-pane -t 0
  tmux attach -t ${SESSION}
else
while [[ $RUN == 1 ]]; do
  BEGIN=$(date +%s%N)
  f_Label "BEGIN" "now"
  if [ -d $OUTPUT_DIR ]; then
    echo "Removing old output"
    rm -r $OUTPUT_DIR
  fi
  mkdir $OUTPUT_DIR
  f_Label "BEGIN TARBALL SCRIPT" 
  ./zaZipUpScript.txt
  f_Label "BEGIN COMPILE DIRECTORY SCRIPT"
  ./zbFileCopyScript.txt
  f_Label "BEGIN COMPILE"
  echo "Decend into 'testdirectory' directory"
  cd testdirectory
  for item in *
  do
    echo "Compiling $item"
    cd $item
    f_Label "COMPILER OUT" "now" > ../../$COMPILER_OUT
    make -f ../../makefile >> ../../$COMPILER_OUT 2>&1
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
    f_Label "BEGIN EXECUTION SCRIPT"
    ./zdExecuteScript.txt
  fi
  f_Label "OPENING READ-ONLY BUFFERS"
  echo "Entering the outputs directory"
  cd $OUTPUT_DIR
  echo "Creating Array of outputs"
    OUTFILES=( "$(ls -p | grep -v / )" )
    vim -M "+noremap <cr> :cq!<cr>" "+noremap q :qa!<cr>" "+set nonumber" "+noremap <tab> :bn<cr>" "+tab sball" "+set wrap linebreak nolist" ${OUTFILES[@]}
    RUN=$?
    cd ..
    clear
  done
fi
echo "The Script Ended Successfully"
