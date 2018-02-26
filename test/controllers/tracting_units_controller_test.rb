require 'test_helper'

class TractingUnitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tracting_units_index_url
    assert_response :success
  end

  test "should get show" do
    get tracting_units_show_url
    assert_response :success
  end

end
