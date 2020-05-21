require 'test_helper'

class YeastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yeast = yeasts(:one)
  end

  test "should get index" do
    get yeasts_url, as: :json
    assert_response :success
  end

  test "should create yeast" do
    assert_difference('Yeast.count') do
      post yeasts_url, params: { yeast: { attenuation: @yeast.attenuation, flocculation: @yeast.flocculation, form: @yeast.form, lab: @yeast.lab, name: @yeast.name, notes: @yeast.notes, temp_high: @yeast.temp_high, temp_low: @yeast.temp_low, type: @yeast.type } }, as: :json
    end

    assert_response 201
  end

  test "should show yeast" do
    get yeast_url(@yeast), as: :json
    assert_response :success
  end

  test "should update yeast" do
    patch yeast_url(@yeast), params: { yeast: { attenuation: @yeast.attenuation, flocculation: @yeast.flocculation, form: @yeast.form, lab: @yeast.lab, name: @yeast.name, notes: @yeast.notes, temp_high: @yeast.temp_high, temp_low: @yeast.temp_low, type: @yeast.type } }, as: :json
    assert_response 200
  end

  test "should destroy yeast" do
    assert_difference('Yeast.count', -1) do
      delete yeast_url(@yeast), as: :json
    end

    assert_response 204
  end
end
