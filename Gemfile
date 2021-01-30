# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "nanoc", "~> 4.11"

gem "builder", "~> 3.2"
gem "kramdown", "~> 2.3"
gem "kramdown-parser-gfm", "~> 1.1"

group :development do
  gem "gingerice", "~> 1.3"
  gem "highline", "~> 2.0"
  gem "rake", "~> 13.0"
end

group :development, :nanoc do
  gem "adsf", "~> 1.4"
  gem "byebug", "~> 11.1"
  gem "guard-nanoc", "~> 2.1"
  gem "webrick", "~> 1.7"
end
