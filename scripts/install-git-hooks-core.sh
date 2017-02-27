#!/usr/bin/env bash

set -ex

git clone https://github.com/pivotal-cf-experimental/git-hooks-core ~/.git-hooks-core
git config --global --add core.hooksPath ~/.git-hooks-core

curl -o /usr/local/bin/cred-alert-cli \
  https://s3.amazonaws.com/cred-alert/cli/current-release/cred-alert-cli_linux

chmod +x /usr/local/bin/cred-alert-cli
