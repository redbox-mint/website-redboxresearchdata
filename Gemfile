source "https://rubygems.org"

# Find the current github-pages version: https://pages.github.com/versions/
gem "github-pages", "~> 231", group: :jekyll_plugins

# more recent versions of ruby do not have webrick pre-installed, so install it
gem "webrick", "~> 1.8"

# jekyll plugins are specified by the github-pages gem
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-redirect-from"
  gem "jekyll-sitemap"
end
