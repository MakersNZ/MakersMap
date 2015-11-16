#!/usr/bin/env bash
gpg --list-keys 409B6B1796C275462A1703113804BB82D39DC0E3 || gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 || curl -sSL https://rvm.io/mpapis.asc | gpg --import -


curl -sSL https://get.rvm.io | bash -s $1
