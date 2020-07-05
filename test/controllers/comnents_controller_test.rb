require 'test_helper'

class ComnentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comnent = comnents(:one)
  end

  test "should get index" do
    get comnents_url
    assert_response :success
  end

  test "should get new" do
    get new_comnent_url
    assert_response :success
  end

  test "should create comnent" do
    assert_difference('Comnent.count') do
      post comnents_url, params: { comnent: { body: @comnent.body, post_id: @comnent.post_id } }
    end

    assert_redirected_to comnent_url(Comnent.last)
  end

  test "should show comnent" do
    get comnent_url(@comnent)
    assert_response :success
  end

  test "should get edit" do
    get edit_comnent_url(@comnent)
    assert_response :success
  end

  test "should update comnent" do
    patch comnent_url(@comnent), params: { comnent: { body: @comnent.body, post_id: @comnent.post_id } }
    assert_redirected_to comnent_url(@comnent)
  end

  test "should destroy comnent" do
    assert_difference('Comnent.count', -1) do
      delete comnent_url(@comnent)
    end

    assert_redirected_to comnents_url
  end
end
