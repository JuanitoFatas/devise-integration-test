require 'minitest/autorun'

ENV["RAILS_ENV"] = 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rails/test_help'

require "capybara/rails"

class ActionDispatch::IntegrationTest
  include Capybara::DSL

  # https://github.com/plataformatec/devise/wiki/How-To:-Test-with-Capybara
  include Warden::Test::Helpers
  Warden.test_mode!
end
