# shellcheck disable=SC2034
GITHUB_USER=${GITHUB_USER:-$(git config --global user.name)}
GITHUB_EMAIL=${GITHUB_EMAIL:-$(git config --global user.email)}
GITHUB_ORG=${GITHUB_ORG:-$(git config --global user.organization)}

DOCUMENTS_DIR="$HOME/Documents"
PROJECTS_DIR="$DOCUMENTS_DIR/Projects"
GITHUB_DIR="$PROJECTS_DIR/github.com"
GITHUB_USER_DIR="$GITHUB_DIR/$GITHUB_USER"
GITHUB_ORG_DIR="$GITHUB_DIR/$GITHUB_ORG"
