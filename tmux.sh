#!/bin/bash

SN="dev"

tmux has-session -t $SN &>/dev/null

if [ $? != 0 ] 
then
    tmux new -s $SN -n editor -d -x- -y-
#   tmux splitw -h -p 25 # split vertically by 50%
#    tmux select-pane -t 1
#    tmux splitw -v
    tmux new-window -t $SN:1 -n reference
    tmux new-window -t $SN:2 -n dotfiles
    tmux select-window -t 0
    tmux select-pane -t 0

fi

tmux -2 attach -t $SN 
