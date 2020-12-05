require 'test_helper'

class BoardPinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @board_pin = board_pins(:one)
  end

  test "should get index" do
    get board_pins_url, as: :json
    assert_response :success
  end

  test "should create board_pin" do
    assert_difference('BoardPin.count') do
      post board_pins_url, params: { board_pin: { board_id: @board_pin.board_id, pin_id: @board_pin.pin_id } }, as: :json
    end

    assert_response 201
  end

  test "should show board_pin" do
    get board_pin_url(@board_pin), as: :json
    assert_response :success
  end

  test "should update board_pin" do
    patch board_pin_url(@board_pin), params: { board_pin: { board_id: @board_pin.board_id, pin_id: @board_pin.pin_id } }, as: :json
    assert_response 200
  end

  test "should destroy board_pin" do
    assert_difference('BoardPin.count', -1) do
      delete board_pin_url(@board_pin), as: :json
    end

    assert_response 204
  end
end
