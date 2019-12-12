source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails',      '6.0.0'
gem 'puma',       '3.12.2'
gem 'sass-rails', '5.1.0'
gem 'webpacker',  '4.0.7'
gem 'turbolinks', '5.2.0'
gem 'jbuilder',   '2.9.1'
gem 'bootsnap',   '1.4.4', require: false
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
gem 'pg_search'
gem 'bcrypt', '~> 3.1.2'
gem "bootstrap_form", "~> 4.0"
gem 'figaro'
gem 'will_paginate', '~> 3.1.1'
gem 'will_paginate-bootstrap'
gem "simple_calendar", "~> 2.0"

gem 'wicked_pdf'

#gem 'axlsx', '~> 2.0'
#gem "axlsx_rails"
gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: 'c8ac844'
gem 'axlsx_rails', '>= 0.5.1'
gem 'rubyzip', '>= 1.2.1'
gem 'zip-zip'
#gem 'axlsx', '~> 2.1.0.pre'
group :production do
  gem 'wkhtmltopdf-heroku'
end

#group :development, :test do
 gem 'wkhtmltopdf-binary'
#end

group :development, :test do
  gem 'sqlite3', '1.4.1'
  gem 'byebug',  '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',           '4.0.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.1.0'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'rails_real_favicon'
end

group :test do
  gem 'capybara',           '3.28.0'
  gem 'selenium-webdriver', '3.142.4'
  gem 'webdrivers',         '4.1.2'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions  
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'launchy'          # a useful debugging aid for user stories
end

group :production do
  gem 'pg', '0.20.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
