source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


# For file uploads
gem 'rmagick'
gem 'carrierwave'
gem 'fog'
gem 'thin'
gem 'acts_as_list'
gem 'mercury-rails', git: 'https://github.com/jejacks0n/mercury.git'

group :production do
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
gem 'haml'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  gem 'mysql2'
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
end

group :development do
  gem 'mysql2'
  gem 'therubyracer'
  gem 'rspec-rails'
  gem 'ty-gen', :path => '/var/www/railsprojects/ty-gen'
end
