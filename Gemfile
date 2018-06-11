source 'https://rubygems.org'

ruby '2.5.1'

gem 'rails', '4.2.9'
gem 'pg', '~> 0.15'
gem 'puma'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'hamlit-rails'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'devise'
gem 'feathericon-rails'
gem 'faker'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
end

group :test do
  gem 'capybara'
  gem "capybara-webkit"
  gem "database_cleaner"
  gem 'simplecov', require: false
  gem 'formulaic'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'pry-rails'
  gem 'quiet_assets'
end

