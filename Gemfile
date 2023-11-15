source 'https://rubygems.org'

ruby '3.2.2'

gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.2'
gem 'sqlite3', '~> 1.4'

gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'byebug', '~> 11.1', :groups => [:development, :test]
  gem 'debug', platforms: %i[mri windows]
  gem 'rspec-rails', '~> 6.0'
end

group :development do
  gem 'faker', '~> 3.2'
end

gem 'active_model_serializers', '~> 0.10.14'

group :test do
  gem 'shoulda-matchers', '~> 5.3'
  gem 'simplecov', '~> 0.22.0', require: false
end
