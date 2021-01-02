# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "builder", "~> 3.2"
gem "kramdown", "~> 2.3"
gem "nanoc", "~> 4.11"
gem "rake", "~> 13.0"

group :development, :nanoc do
  gem "adsf", "~> 1.4"
  gem "byebug", "~> 11.1", :group => :nanoc
  gem "guard-nanoc", "~> 2.1", :group => :nanoc
end
gem "highline", "~> 2.0"
