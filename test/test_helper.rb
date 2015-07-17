ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL

  SUB_URI = '/sub_uri'.freeze

  Capybara.app = Rack::Builder.new do
    map(SUB_URI) { run Rails.application }
  end.to_app

  Capybara.register_driver :rack_test do |app|
    Capybara::RackTest::Driver.new(app, respect_data_method: true)
  end
end
