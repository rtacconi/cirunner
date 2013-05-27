source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'

gem 'focused_controller', git: 'https://github.com/JeanMertz/focused_controller.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'bootstrap-sass', '~> 2.3.1.0'
gem "simple_form", git: 'git@github.com:plataformatec/simple_form.git'
gem "devise", git: 'git@github.com:plataformatec/devise.git', branch: 'rails4'
gem 'jquery-rails'
gem "haml-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :development do
  gem "rspec-rails", ">= 2.12.2"
end

group :test do
  gem "capybara", ">= 2.0.3"
  gem "launchy", ">= 2.2.0"
  gem 'machinist', '>= 2.0.0.beta2'
  gem 'simplecov', :require => false
end

group :test, :development do
  gem 'sqlite3'
end
