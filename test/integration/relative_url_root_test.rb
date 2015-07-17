require 'test_helper'

class RelativeUrlRootTest < ActionDispatch::IntegrationTest
  test 'SCRIPT_NAME overrides RELATIVE_URL_ROOT in route helpers of isolated mounted engines' do
    visit SUB_URI

    assert_equal "#{SUB_URI}/foo/login", find('td[data-mounted-engine-route]').text
  end
end
