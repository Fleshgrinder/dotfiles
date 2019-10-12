#!/usr/bin/env sh
# shellcheck disable=SC1090
set -aeu

alias editor='$EDITOR'
alias aliases='editor ~/.aliases'
alias git-trigger-build='git commit --allow-empty -qm "Trigger Build" && git push -qu'

. ~/.aliases.d/*.sh
