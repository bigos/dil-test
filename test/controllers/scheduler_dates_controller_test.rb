require 'test_helper'

class SchedulerDatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scheduler_dates_index_url
    assert_response :success
  end

end
