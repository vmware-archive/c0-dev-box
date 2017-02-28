#!/usr/bin/env bash

set -ex

cat > ~/.gitconfig <<EOF
[core]
  whitespace = indent-with-non-tab tab-in-indent trailing-space -blank-at-eof
[grep]
  line-number = true
[help]
  autocorrect = 1
[alias]
  st = status
  co = checkout
  ci = commit
  br = branch
  sta = stash
  w = whatchanged
  llog = log --date=local
  lol = log --graph --oneline
  lola = log --graph --oneline --all
  lup = log @{u}... --left-right --graph
[apply]
  whitespace = nowarn
[color]
  branch = auto
  diff = auto
  interactive = auto
  status = auto
  ui = auto
[branch]
  autosetupmerge = true
  autosetuprebase = remote
[push]
  default = upstream
[rerere]
  enabled = true
[rebase]
  autosquash = true
  stat = true
[format]
  pretty = format:"%h %C(yellow)%cr%Creset %Cgreen%an%Creset | %s"
EOF
