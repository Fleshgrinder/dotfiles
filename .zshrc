#!/usr/bin/env zsh

# TODO should be shared between all shells.
# Sets the colors for ls output to play nice with Solarized Dark.
# https://github.com/seebi/dircolors-solarized
eval "$(dircolors "$HOME/.config/dotfiles/vendor/com.github/seebi/dircolors-solarized/dircolors.256dark")"

# Sets the colors for zsh file auto-completion to play nice with Solarized Dark.
# https://stackoverflow.com/questions/23555836
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Sets a color for zsh auto-suggestions that plays nice with Solarized Dark.
# https://github.com/zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#0B5365'

# TODO only set it up if not iTerm 2 because there this is built-in.
# https://unix.stackexchange.com/questions/517025/zsh-clear-scrollback-buffer
function cls() {
    printf "\ec\e[3J" && zle && zle .reset-prompt && zle -R
    return 0
}
zle -N cls
bindkey '^K' cls

# Removed duplicates from PATH.
typeset -gU path

# TODO should be shared between Bash and ZSH.
# Globally enabled extended globbing so that ./**/ always works.
setopt extended_glob
