source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'execjs'
gem 'therubyracer'

# For file uploads
gem 'rmagick'
gem 'carrierwave'
gem 'nested_form', :git => "git://github.com/ryanb/nested_form.git" 

group :production do
  gem 'therubyracer-heroku', '0.8.1.pre3' # you will need this too
  gem 'pg'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'rspec'
  gem 'webrat'
  gem 'factory_girl_rails'
end

group :development do
  gem 'rspec-rails'
  gem 'webrat'
  gem 'ty-gen', :path => '/var/www/railsprojects/ty-gen'
end
