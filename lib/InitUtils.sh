#!/bin/bash

###############################################################
### Dotfiles install script
###
### Copyright (C) 2018 Cyberfee
###
### By: cyberfee
###
### Any questions, comments, or bug reports may be sent to above
### email address. Enjoy, and keep on using Arch.
###
### License: GPL v3.0
###############################################################

_init_files () {
    dependencies=( "$VIM_RC" "$NVIM_DIR" "$NVIM_RC" "$ZSH_RC" "$VIM_DIR" "$TMUX_RC" "$TMUX_DIR" "$ZIM_DIR" "$DIALOG" )

    if [ ! -d "$HOME/BackupTakumi/" ];then
        mkdir -p "$HOME/BackupTakumi"
        exist=false
    else
        exist=true
    fi

    for i in "${dependencies[@]}";do
        if [ -f "$i" ] || [ -d "$i" ];then
            if [ "$exist" == "false" ];then
                cp -r $i "$HOME/BackupTakumi"
            fi
            rm -rf $i
        fi
    done

    cp misc/.dialogrc $HOME
}
