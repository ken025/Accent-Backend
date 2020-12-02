require 'test_helper'

class SavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @safe = saves(:one)
  end

  test "should get index" do
    get saves_url, as: :json
    assert_response :success
  end

  test "should create safe" do
    assert_difference('Save.count') do
      post saves_url, params: { safe: { pin_id: @safe.pin_id, user_id: @safe.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show safe" do
    get safe_url(@safe), as: :json
    assert_response :success
  end

  test "should update safe" do
    patch safe_url(@safe), params: { safe: { pin_id: @safe.pin_id, user_id: @safe.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy safe" do
    assert_difference('Save.count', -1) do
      delete safe_url(@safe), as: :json
    end

    assert_response 204
  end
end
