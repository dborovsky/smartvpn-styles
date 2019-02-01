require 'capybara/rspec'
require 'bundler/setup'
require 'support/dummy_rails_integration'

Bundler.require(:default, :test)

Dir['./spec/support/**/*/.rb'].each { |file| require file }

RSpec.configure do |config|
  config.include DummyRailsIntegration
  
  config.before(:all) do
    create_dummy_app
  end

  config.after(:all) do
    remove_dummy_app
  end
end
