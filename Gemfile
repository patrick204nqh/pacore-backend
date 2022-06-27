source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.3"

gem "sprockets-rails"
gem "pg", "~> 1.4", ">= 1.4.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "react-rails"
gem "jbuilder"
gem "sidekiq", "~> 4.1", ">= 4.1.2"
gem "devise"
gem "omniauth"
gem "cancancan"
gem "rolify"
gem "paper_trail"
gem "rails_admin", "~> 3.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
gem "jsbundling-rails"
gem "graphql"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "graphiql-rails"
  gem "web-console"
  gem "rack-mini-profiler"
  gem "spring"
  gem "pry"
  gem "pry-byebug"
  gem "foreman"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
