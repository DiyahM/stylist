# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'turnip/capybara'
require 'fakeweb'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
Dir.glob("spec/acceptance/steps/*steps.rb") { |f| load f, true}

OmniAuth.config.test_mode = true

OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
    :provider => 'eventbrite',
    :uid => '123545',
    :info => {:name => 'Donald Duck'},
    :credentials => {:token => 'abcde', :expires_at => Time.now + 1.day }
  })

RSpec.configure do |config|
  
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
