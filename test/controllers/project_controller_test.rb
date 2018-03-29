require 'test_helper'

class ProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get project_view_url
    assert_response :success
  end

end
