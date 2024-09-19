#!/usr/bin/env bash

set -euo pipefail

DATA_FILE=.support/rblatest.json
HTML_FILE=_includes/latest_release.html

curl --silent -L -o "${DATA_FILE}" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/redbox-mint/redbox-portal/releases/latest

VERSION=$(jq -r '.tag_name' "${DATA_FILE}")
URL=$(jq -r '.html_url' "${DATA_FILE}")
PUB_DATE=$(jq -r '.published_at | fromdateiso8601 | strftime("%a, %d %B %Y")' "${DATA_FILE}")

# e.g. The [most recent ReDBox version is <tag_name>](<html_url>) released on [<published_at>].
# e.g. The [most recent ReDBox version is *v3.6*](https://github.com/redbox-mint/redbox-portal/releases/tag/v3.6) released on 01 May 2024.

echo "The <a href='${URL}' target='_blank'>most recent ReDBox version is <strong>${VERSION}</strong></a> released on ${PUB_DATE}." > "${HTML_FILE}"
