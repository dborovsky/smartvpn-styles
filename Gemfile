source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in zurb_foundation.gemspec
gemspec

version = ENV['RAILS_VERSION'] || '4.2'

if version == 'master'
  git 'https://github.com/rails/rails.git' do
    gem 'rails'
  end
else
  gem_version = "~> #{version}"

  gem 'rails', gem_version
end

gem "autoprefixer-rails"

group :test do
  gem 'capybara'
end

