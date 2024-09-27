#!/usr/bin/env bash

set -euo pipefail

echo "Install the same ruby version in use by github pages."
ruby_version=$(curl --silent https://pages.github.com/versions.json | jq -r '.ruby')
rvm install "${ruby_version}"
rvm use "${ruby_version}"

echo "Update RubyGems."
gem update --no-document --system

echo "Install bundler."
gem install --no-document bundler

echo "Install from the GemFile."
bundle install
