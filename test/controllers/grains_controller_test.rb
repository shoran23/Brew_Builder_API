require 'test_helper'

class GrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grain = grains(:one)
  end

  test "should get index" do
    get grains_url, as: :json
    assert_response :success
  end

  test "should create grain" do
    assert_difference('Grain.count') do
      post grains_url, params: { grain: { color: @grain.color, mash: @grain.mash, max: @grain.max, name: @grain.name, notes: @grain.notes, origin: @grain.origin, potential: @grain.potential, power: @grain.power } }, as: :json
    end

    assert_response 201
  end

  test "should show grain" do
    get grain_url(@grain), as: :json
    assert_response :success
  end

  test "should update grain" do
    patch grain_url(@grain), params: { grain: { color: @grain.color, mash: @grain.mash, max: @grain.max, name: @grain.name, notes: @grain.notes, origin: @grain.origin, potential: @grain.potential, power: @grain.power } }, as: :json
    assert_response 200
  end

  test "should destroy grain" do
    assert_difference('Grain.count', -1) do
      delete grain_url(@grain), as: :json
    end

    assert_response 204
  end
end
