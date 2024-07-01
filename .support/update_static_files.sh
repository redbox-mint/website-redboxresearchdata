#!/usr/bin/env bash

set -euo pipefail

npm install

# bootstrap framework
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js static/js/bootstrap.bundle.min.js

# ref: https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity#tools_for_generating_sri_hashes
BOOTSTRAP_JS_HASH=$(cat static/js/bootstrap.bundle.min.js | openssl dgst -sha512 -binary | openssl base64 -A)

cat << EOF > _includes/bootstrap_js.html
<script
  src="{{ '/static/js/bootstrap.bundle.min.js' | relative_url }}"
  integrity="sha512-${BOOTSTRAP_JS_HASH}">
  </script>
EOF

cp node_modules/bootstrap/dist/css/bootstrap.min.css static/css/bootstrap.min.css

BOOTSTRAP_CSS_HASH=$(cat static/css/bootstrap.min.css | openssl dgst -sha512 -binary | openssl base64 -A)

cat << EOF > _includes/bootstrap_css.html
<link rel="stylesheet"
  href="{{ '/static/css/bootstrap.min.css' | relative_url }}"
  integrity="sha512-${BOOTSTRAP_CSS_HASH}"/>
EOF

# bootstrap icons
cp node_modules/bootstrap-icons/font/bootstrap-icons.min.css static/css/bootstrap-icons.min.css
mkdir -p static/css/fonts
cp node_modules/bootstrap-icons/font/fonts/bootstrap-icons.woff static/css/fonts/bootstrap-icons.woff
cp node_modules/bootstrap-icons/font/fonts/bootstrap-icons.woff2 static/css/fonts/bootstrap-icons.woff2

BOOTSTRAP_ICONS_HASH=$(cat static/css/bootstrap-icons.min.css | openssl dgst -sha512 -binary | openssl base64 -A)

cat << EOF > _includes/bootstrap_icons_css.html
<link rel="stylesheet"
  href="{{ '/static/css/bootstrap-icons.min.css' | relative_url }}"
  integrity="sha512-${BOOTSTRAP_ICONS_HASH}"/>
EOF
