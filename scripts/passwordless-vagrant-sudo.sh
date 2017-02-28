#!/usr/bin/env bash

set -ex

cp /etc/sudoers /etc/sudoers.orig
echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
