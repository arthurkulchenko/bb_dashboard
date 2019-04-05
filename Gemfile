# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'pg', '>= 0.18', '< 2.0'
gem 'rails', '~> 5.2.2', '>= 5.2.2.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'paper_trail'
gem 'puma', '~> 3.11'
gem 'redis', '~> 4.0'
gem 'rolify'
gem 'sidekiq'
gem 'webpacker'
gem 'haml'
gem 'rails-i18n'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-rails'
gem 'active_importer'

# gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
# gem 'jbuilder', '~> 2.5'
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'letter_opener'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  # gem 'capistrano-rails'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'selenium-webdriver'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
