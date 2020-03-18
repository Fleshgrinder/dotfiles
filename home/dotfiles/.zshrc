#!/usr/bin/env zsh
# shellcheck disable=SC1090 disable=SC2034

path=(
    ~/bin
    /usr/local/opt/coreutils/libexec/gnubin
    /usr/local/opt/curl-openssl/bin
    /usr/local/opt/findutils/libexec/gnubin
    /usr/local/opt/gnu-getopt/libexec/gnubin
    /usr/local/opt/gnu-indent/libexec/gnubin
    /usr/local/opt/gnu-sed/libexec/gnubin
    /usr/local/opt/gnu-tar/libexec/gnubin
    /usr/local/opt/make/libexec/gnubin
    /usr/local/bin
    /usr/bin
    /bin
    /usr/local/sbin
    /usr/sbin
    /sbin
)

set -a
for f in ~/dotfiles/init/* ~/dotfiles/env/* ~/dotfiles/alias/*; do
    source "$f"
done
set +a

# remove duplicates from PATH
typeset -gU path

setopt extended_glob
