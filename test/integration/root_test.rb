require 'test_helper'

class RootTest < ActionDispatch::IntegrationTest
  test 'root' do
    visit root_path
  end
end
