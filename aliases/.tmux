#!/bin/zsh

alias tux='tux 2> /dev/null'
alias tux-kill='tmux kill-server'

function tux {
    session="Project"
    sessionexists=$(tmux list-sessions | grep $session)

    # create tmux session if it doesn't exist
    if [ "$sessionexists" = "" ]
    then
        # create new session
        tmux -2 new-session -d -s $session
        tmux select-window -t $session:0

        # rename the window
        tmux rename-window $PWD

        # Pane 0: terminal
        tmux selectp -t 0
        tmux splitw -h -p 96

        # Pane 1: vim
        tmux selectp -t 1
        tmux send-keys 'clear' 'C-m'
        tmux send-keys 'vi' 'C-m'

        # re-select pane 0
        tmux selectp -t 0
        tmux send-keys 'clear' 'C-m'
    fi

    # attach tmux session
    tmux -2 attach-session -t $session:0;
}

