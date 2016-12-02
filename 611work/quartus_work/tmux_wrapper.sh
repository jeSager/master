#!/bin/bash

HERE=$(pwd)
SESSION=compile
RUN=1


# does not start tmux if it's already running
if [[ -z $TMUX ]]; then
  tmux new-session -s ${SESSION} -n vim -d
  tmux send-keys -t ${SESSION} 'cd ' $HERE C-m
  tmux send-keys -t ${SESSION} 'vim *.v' C-m
  tmux split -h
  tmux select-pane -t 1
  tmux send-keys -t ${SESSION} 'cd ' $HERE C-m
  tmux send-keys -t ${SESSION} "./tmux_wrapper.sh" C-m
#  tmux bind-key -n F2 send-keys -t 1 C-m
#  tmux bind-key -n F4 select-pane -t :.+
#  tmux bind-key -n C-j send-keys -t :.+ j \;
#  tmux bind-key -n C-k send-keys -t :.+ k \;
#  tmux bind-key -n C-n send-keys -t :.+ Tab \;
#  tmux bind-key -n C-p send-keys -t :.+ ';bp' C-m \;
#  tmux bind u set -g status
#  tmux set -g mouse-select-pane on
#  tmux set -g mouse-resize-pane on
#  tmux set -g status off
  #best noswapfile in the edit window to use this option
  tmux bind-key -n F9 confirm-before kill-session
  tmux select-pane -t 0
  tmux attach -t ${SESSION}
else
  while [[ $RUN == 1 ]]; do
    vsim -c -do n.do > ./output.txt

    # Once in THIS READ-ONLY vim session, <Enter> causes the script to run again
    # The tmux session is set such that <F2> will send <Enter> to the other pane
    vim -M "+noremap <cr> :cq!<cr>" "+noremap q :qa!<cr>" "+set wrap linebreak nolist" ./output.txt
    RUN=$?
  done
fi
echo "The Script Ended Successfully"
