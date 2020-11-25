source 'https://rubygems.org'

gem 'rails',        '5.1.6'
gem 'rails-i18n'
gem 'bcrypt',       '3.1.12'
gem 'faker',        '1.4.2'
# gem 'carrierwave',  '0.10.0'
# gem 'mini_magick',  '3.8.0'
gem 'carrierwave', '~> 1.2.2'
# gem 'carrierwave',             '1.2.2'
gem 'mini_magick',             '4.9.5'
gem 'bootstrap-sass', '3.3.7'
gem 'puma',         '3.9.1'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'bxslider-rails'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'
gem "font-awesome-rails"
gem 'will_paginate',           '3.1.6'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'ransack'
gem 'kaminari'
gem 'bootstrap-social-rails'
gem 'font-awesome-rails'
gem 'omniauth-google'
gem 'omniauth-google-oauth2'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'dotenv-rails'
gem 'aws-sdk', '~> 2'
gem 'serviceworker-rails'
gem 'activeadmin'
gem 'enumerize'
gem 'devise'
gem 'cancancan'
gem 'exception_notification'
gem 'slack-notifier'
gem 'derailed_benchmarks', group: :development
gem 'recaptcha', require: 'recaptcha/rails'
gem 'rack-attack'
gem 'browser'

group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'bullet'
  gem 'byebug',  '9.0.6', platform: :mri
  gem 'brakeman', :require => false
end

group :development do
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.10.3'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

group :production do
  gem 'pg', '0.20.0'
  gem 'rails_12factor', '0.0.2'
  gem 'fog',          '1.36.0'
  gem 'heroku-deflater'
  gem 'fog-aws'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]