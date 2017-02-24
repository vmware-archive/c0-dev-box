#!/usr/bin/env bash

cat > ~/.tmux.conf <<EOF
  # Mouse works as expected
  set -g mouse on

  # use vim keybindings in copy mode
  setw -g mode-keys vi

  # fix escape delay in vim
  set -s escape-time 0

  # enable tpm
  set -g @plugin 'tmux-plugins/tpm'
  set -g @plugin 'tmux-plugins/tmux-sensible'
  set -g @plugin 'tmux-plugins/tmux-yank'

  # initialize tmux plugin manager
  run '~/.tmux/plugins/tpm/tpm'
EOF
