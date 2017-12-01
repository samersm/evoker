require 'test_helper'

class PrototypesControllerTest < ActionDispatch::IntegrationTest
  test "should get playground" do
    get prototypes_playground_url
    assert_response :success
  end

  test "should get maindesign" do
    get prototypes_maindesign_url
    assert_response :success
  end

  test "should get singledesign" do
    get prototypes_singledesign_url
    assert_response :success
  end

  test "should get createdesign" do
    get prototypes_createdesign_url
    assert_response :success
  end

end
