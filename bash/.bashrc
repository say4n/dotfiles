#!/usr/bin/env bash


# PATH variables

# Sign git commits
export GPG_TTY=$(tty)

# Sublime
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"

# Hombrew
export PATH="/usr/local/sbin:$PATH"

# Golang
export GOPATH="/Users/Sayan/go"
export PATH="$PATH:$GOPATH/bin"

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export GEM_HOME=/usr/local/opt/ruby/lib/ruby/gems/2.6.1
export GEM_PATH=/usr/local/opt/ruby/lib/ruby/gems/2.6.1

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash
