# shellcheck disable=SC1090 disable=SC2034

ANTIBODY_HOME=${ANTIBODY_HOME:-$(antibody home)}

# https://github.com/getantibody/antibody/issues/261
ZSH=$(antibody path robbyrussell/oh-my-zsh)
DISABLE_AUTO_UPDATE=true

source ~/.zshplugins
unalias mvn

# agnoster theme
DEFAULT_USER=$USER
prompt_context() { :; }
