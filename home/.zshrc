#!/usr/bin/env zsh
# shellcheck disable=SC1090 disable=SC2034

if [[ -f ~/.zshtheme ]]; then
    source ~/.zshtheme
else
    ANTIBODY_HOME=${ANTIBODY_HOME:-$(antibody home)}

    # https://github.com/getantibody/antibody/issues/261
    ZSH="${ANTIBODY_HOME}/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
    DISABLE_AUTO_UPDATE=true

    source .zshplugins.zsh &>/dev/null || :
    unalias mvn || :

    # agnoster theme
    DEFAULT_USER=$(whoami)
    prompt_context() { :; }
fi

alias zshrc='editor ~/.zshrc'
alias zshplugins='editor ~/.zshplugins'
alias reload-shell='source ~/.zshrc'

source ~/dotfiles/*/*
