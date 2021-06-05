#!/bin/bash

SN="dev"

tmux has-session -t $SN &>/dev/null

if [ $? != 0 ] 
then
    tmux new -s $SN -n editor -d -x- -y-
    tmux splitw -h -p 20 # split vertically by 50%
    tmux select-pane -t 1
    tmux splitw -v
    tmux new-window -t $SN:1 -n dotfiles
    tmux new-window -t $SN:2 -n irc
    tmux select-window -t 0
    tmux select-pane -t 0
    tmux send-keys "nvim ~/.tmux.conf" C-m 

fi

tmux -2 attach -t $SN 
