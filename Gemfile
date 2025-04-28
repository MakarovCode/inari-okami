source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

#ADMIN
gem 'activeadmin'
gem 'activeadmin_addons'
gem 'arctic_admin'
gem 'cancan'
gem 'cancancan'

#GRAPHS
gem 'groupdate'
gem "chartkick"

#SESSION
gem 'devise'

#ERRORS
gem "sentry-ruby"
gem "sentry-rails"

gem 'mini_magick'
gem 'carrierwave'
gem 'carrierwave-base64'
gem 'fog-aws'
gem 'file_validators'
