source 'https://rubygems.org'


gem 'rails', '5.2.0'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'puma'

group :development, :test do
  gem 'byebug'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-puma'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  # gem 'factory_girl_rails'
  gem "factory_bot_rails"
  gem 'shoulda-callback-matchers'
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Added gems
gem 'activerecord'

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
