require 'test_helper'

class HopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hop = hops(:one)
  end

  test "should get index" do
    get hops_url, as: :json
    assert_response :success
  end

  test "should create hop" do
    assert_difference('Hop.count') do
      post hops_url, params: { hop: { alpha: @hop.alpha, beta: @hop.beta, name: @hop.name, notes: @hop.notes, origin: @hop.origin, type: @hop.type } }, as: :json
    end

    assert_response 201
  end

  test "should show hop" do
    get hop_url(@hop), as: :json
    assert_response :success
  end

  test "should update hop" do
    patch hop_url(@hop), params: { hop: { alpha: @hop.alpha, beta: @hop.beta, name: @hop.name, notes: @hop.notes, origin: @hop.origin, type: @hop.type } }, as: :json
    assert_response 200
  end

  test "should destroy hop" do
    assert_difference('Hop.count', -1) do
      delete hop_url(@hop), as: :json
    end

    assert_response 204
  end
end
