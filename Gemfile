ruby '2.2.1'

# Assets
source 'https://rails-assets.org' do
  gem 'rails-assets-angular'
  gem 'rails-assets-angular-material'
  gem 'rails-assets-angular-route'
end

source 'https://rubygems.org' do

  gem 'rails', '4.2.3'
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'jquery-rails'
  gem 'jbuilder', '~> 2.0'
  group :development, :test do
    gem 'byebug'
    gem 'web-console', '~> 2.0'
    gem 'spring'
  end

  gem 'angular-rails-templates'

  gem 'devise'
  gem 'haml-rails'
  gem 'pg'
  
  group :development do
    gem 'better_errors'
    gem 'foreman'
    gem 'html2haml'
    gem 'quiet_assets'
    gem 'rails_layout'
  end
  group :development, :test do
    gem 'pry-rails'
    gem 'pry-rescue'
    gem "rspec-rails"
    gem "factory_girl_rails"
    gem "database_cleaner"
  end
  
  group :production, :staging do
    gem 'puma'
    
    gem "rails_12factor"
    gem "rails_stdout_logging"
    gem "rails_serve_static_assets"
  end

end