source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

eval File.read File.expand_path('../Gemfile', __FILE__)
gem 'rubocop'