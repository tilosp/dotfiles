#!/usr/bin/env bash

DOTFILES="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

git config --global --replace-all include.path "$DOTFILES/git/main.ini" "^$DOTFILES/git/main.ini$"
git config --global core.excludesfile "$DOTFILES/git/.gitignore"
