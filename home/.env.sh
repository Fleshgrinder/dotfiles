#!/usr/bin/env sh
# shellcheck disable=SC1090 disable=SC2034
set -aeu

PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

LANG='en_US.UTF-8'
LANGUAGE=$LANG
LC_ADDRESS=$LANG
LC_ALL=$LANG
LC_COLLATE=$LANG
LC_CTYPE=$LANG
LC_IDENTIFICATION=$LANG
LC_MEASUREMENT=$LANG
LC_MESSAGES=$LANG
LC_MONETARY=$LANG
LC_NAME=$LANG
LC_NUMERIC=$LANG
LC_PAPER=$LANG
LC_TELEPHONE=$LANG
LC_TIME=$LANG

. ~/.env.d/*.sh

DOCUMENTS_DIR="$HOME/Documents"
PROJECTS_DIR="$DOCUMENTS_DIR/Projects"
GITHUB_DIR="$PROJECTS_DIR/github.com"
[ "${GITHUB_USER:-}" = '' ] || MY_GITHUB_DIR="$GITHUB_DIR/$GITHUB_USER"
[ "${GITHUB_ORG:-}" = '' ] || ORG_GITHUB_DIR="$GITHUB_DIR/$GITHUB_ORG"
