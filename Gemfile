source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

gem 'bootstrap-sass', '~> 3.4.1'
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-rails'
gem 'font-awesome-sass', '~> 6.1.1'
gem 'bootstrap-sass-extras', '~> 0.0.2'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'simple_form'
gem 'bootstrap', '~> 5.1.3'
gem 'popper_js', '~> 2.9.3'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'foreman'
end

group :development do
  gem "web-console"
  gem "sqlite3", "~> 1.4"
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'pg', '~> 1.3', '>= 1.3.5'
end


group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
