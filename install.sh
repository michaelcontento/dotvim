#!/usr/bin/env sh

[ -x brew ] && echo "Please install homebrew first" && exit 1

brew update
brew upgrade https://raw.github.com/adamv/homebrew-alt/master/duplicates/vim.rb

sudo easy_install mercurial docutils

sudo gem install bundler
sudo bundle install
