#!/usr/bin/env bash

set -euo pipefail

bundle exec jekyll serve --host 0.0.0.0 --incremental --watch --safe
