#!/usr/bin/env bash

set -euo pipefail

bundle exec jekyll clean --safe --no-watch
bundle exec jekyll build --safe --no-watch
bundle exec jekyll doctor --safe