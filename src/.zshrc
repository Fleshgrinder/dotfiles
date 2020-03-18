#!/usr/bin/env zsh
# shellcheck disable=SC1090 disable=SC2034

path=(
    ~/bin
    /usr/local/opt/coreutils/libexec/gnubin
    /usr/local/opt/findutils/libexec/gnubin
    /usr/local/opt/gnu-getopt/libexec/gnubin
    /usr/local/opt/gnu-indent/libexec/gnubin
    /usr/local/opt/gnu-sed/libexec/gnubin
    /usr/local/opt/gnu-tar/libexec/gnubin
    /usr/local/opt/make/libexec/gnubin
    ~/.config/cargo/bin
    /usr/local/bin
    /usr/bin
    /bin
    /usr/local/sbin
    /usr/sbin
    /sbin
)

export DOTFILES_CONFIG_DIR=~/.config
export DOTFILES_DIR=$DOTFILES_CONFIG_DIR/dotfiles/src

setopt extended_glob

for file in "$DOTFILES_DIR"/init/*.zsh "$DOTFILES_DIR"/alias.d/* "$DOTFILES_DIR"/env.d/*; do
    source "$file"
done

# remove duplicates from PATH
typeset -gU path

