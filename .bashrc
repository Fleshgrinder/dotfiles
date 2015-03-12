#!/bin/bash

# ------------------------------------------------------------------------------

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return ;;
esac

# Do not put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command.
shopt -s checkwinsize

# Enable glob-star support.
shopt -s globstar

# Set history size.
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]
    then debian_chroot=$(cat /etc/debian_chroot)
fi

# Force color prompt (PuTTY).
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Set the title to user@host:dir
PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l --all --classify --group-directories-first --human-readable'
alias la='ls --almost-all'
alias l='ls -F --classify'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# ----------------------------------------------------------------------------- Locale

export LANG='en_US.utf8'
export LANGUAGE='en_US.utf8'
export LC_CTYPE='en_US.utf8'
export LC_NUMERIC='en_US.utf8'
export LC_TIME='en_US.utf8'
export LC_COLLATE='C.UTF-8'
export LC_MONETARY='en_US.utf8'
export LC_MESSAGES='en_US.utf8'
export LC_PAPER='en_US.utf8'
export LC_NAME='en_US.utf8'
export LC_ADDRESS='en_US.utf8'
export LC_TELEPHONE='en_US.utf8'
export LC_MEASUREMENT='en_US.utf8'
export LC_IDENTIFICATION='en_US.utf8'

# -----------------------------------------------------------------------------
