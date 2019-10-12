#!/usr/bin/env bash

# set -a
# source ~/ansi-colors.bash
# set +a

export z='\033[0m'
export blue='\033[34m'
export cyan='\033[36m'
export green='\033[32m'
export magenta='\033[35m'
export red='\033[31m'
export white='\033[37m'
export yellow='\033[33m'

print() {
    printf '%b%s%b' "$1" "$2" "$z";
}

b() { z "$blue" "$*"; }
c() { z "$cyan" "$*"; }
g() { z "$green" "$*"; }
m() { z "$magenta" "$*"; }
r() { z "$red" "$*"; }
w() { z "$white" "$*"; }
y() { z "$yellow" "$*"; }

export -f z b c g m r w y
