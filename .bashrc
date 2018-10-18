#!/bin/bash

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend checkwinsize globstar

set show-all-if-unmodified on
set completion-ignore-case on

eval "$(dircolors -b)"

export LANG='en_US.utf8'
export LANGUAGE='en_US.utf8'
export LC_ADDRESS='en_US.utf8'
export LC_COLLATE='C.UTF-8'
export LC_CTYPE='en_US.utf8'
export LC_IDENTIFICATION='en_US.utf8'
export LC_MEASUREMENT='en_US.utf8'
export LC_MESSAGES='en_US.utf8'
export LC_MONETARY='en_US.utf8'
export LC_NAME='en_US.utf8'
export LC_NUMERIC='en_US.utf8'
export LC_PAPER='en_US.utf8'
export LC_TELEPHONE='en_US.utf8'
export LC_TIME='en_US.utf8'

export GIT_SSH='~/scoop/apps/putty/current/PLINK.EXE'
export PROJECTS_DIR='~/projects'
export BITBUCKET_DIR="${PROJECTS_DIR}/bitbucket.org"
export GITHUB_DIR="${PROJECTS_DIR}/github.com"
export GITLAB_DIR="${PROJECTS_DIR}/gitlab.com"

USERNAME=${USERNAME:-$(whoami)}

alias projects="cd "${PROJECTS_DIR}""
alias bitbucket="cd "${BITBUCKET_DIR}""
alias my-bitbucket="cd "${BITBUCKET_DIR}/${USERNAME}""
alias github="cd "${GITHUB_DIR}""
alias my-github="cd "${GITHUB_DIR}/${USERNAME}""
alias gitlab="cd "${GITLAB_DIR}""
alias my-gitlab="cd "${GITLAB_DIR}/${USERNAME}""

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias cls='printf "\033c"'
alias editor='~/scoop/apps/notepad2-mod/current/Notepad2.exe'
alias l='ls -Ahl --group-directories-first'
