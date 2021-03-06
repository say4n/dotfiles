#!/usr/bin/env zsh


# To make pipenv work - https://github.com/pypa/pipenv/issues/538
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# Make vim the default editor.
export EDITOR='vim';


# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';


# Added by gitigonre cli
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}


# iTerm 2 bash intergration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

