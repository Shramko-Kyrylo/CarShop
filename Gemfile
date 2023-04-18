source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "sprockets-rails"
gem 'mysql2', '~> 0.5.2'
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem 'jquery-rails'
gem 'bootstrap', '~> 5.2','>=5.2.3'
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'devise'
gem 'activeadmin'

gem 'aws-sdk-s3', require: false
gem 'image_processing'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec"
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
