source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.4"

gem "rails", "6.0.3.6"
gem "pg"
gem "puma"
gem "sass-rails"
gem "webpacker"
gem "turbolinks"
gem "jbuilder"
gem "bootsnap", require: false


gem "bcrypt"
gem "rails-i18n"
gem "kaminari"
gem "date_validator"
gem "valid_email2"
gem "nokogiri"



group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"  
  gem "webdrivers"
  gem "rspec-rails"
  gem "factory_bot_rails"
end

group :production do
  gem "pg"
end
