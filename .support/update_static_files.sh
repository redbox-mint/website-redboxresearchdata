#!/usr/bin/env bash

set -euo pipefail

npm install

# bootstrap framework
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js static/js/bootstrap.bundle.min.js

cat << EOF > _includes/bootstrap_js.html
<script
  src="{{ '/static/js/bootstrap.bundle.min.js' | relative_url }}"
  integrity="sha512-$(sha512sum 'static/js/bootstrap.bundle.min.js' | base64 --wrap=0)">
  </script>
EOF

cp node_modules/bootstrap/dist/css/bootstrap.min.css static/css/bootstrap.min.css

cat << EOF > _includes/bootstrap_css.html
<link rel="stylesheet"
  href="{{ '/static/css/bootstrap.min.css' | relative_url }}"
  integrity="sha512-$(sha512sum 'static/css/bootstrap.min.css' | base64 --wrap=0)"/>
EOF

# bootstrap icons
cp node_modules/bootstrap-icons/font/bootstrap-icons.min.css static/css/bootstrap-icons.min.css
mkdir -p static/css/fonts
cp node_modules/bootstrap-icons/font/fonts/bootstrap-icons.woff static/css/fonts/bootstrap-icons.woff
cp node_modules/bootstrap-icons/font/fonts/bootstrap-icons.woff2 static/css/fonts/bootstrap-icons.woff2

cat << EOF > _includes/bootstrap_icons_css.html
<link rel="stylesheet"
  href="{{ '/static/css/bootstrap-icons.min.css' | relative_url }}"
  integrity="sha512-$(sha512sum 'static/css/bootstrap-icons.min.css' | base64 --wrap=0)"/>
EOF
