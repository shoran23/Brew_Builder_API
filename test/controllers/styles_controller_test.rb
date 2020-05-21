require 'test_helper'

class StylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get styles_url, as: :json
    assert_response :success
  end

  test "should create style" do
    assert_difference('Style.count') do
      post styles_url, params: { style: { avb: @style.avb, fg_high: @style.fg_high, fg_low: @style.fg_low, ibu_high: @style.ibu_high, ibu_low: @style.ibu_low, name: @style.name, og_high: @style.og_high, og_low: @style.og_low, overview: @style.overview, srm_high: @style.srm_high, srm_low: @style.srm_low } }, as: :json
    end

    assert_response 201
  end

  test "should show style" do
    get style_url(@style), as: :json
    assert_response :success
  end

  test "should update style" do
    patch style_url(@style), params: { style: { avb: @style.avb, fg_high: @style.fg_high, fg_low: @style.fg_low, ibu_high: @style.ibu_high, ibu_low: @style.ibu_low, name: @style.name, og_high: @style.og_high, og_low: @style.og_low, overview: @style.overview, srm_high: @style.srm_high, srm_low: @style.srm_low } }, as: :json
    assert_response 200
  end

  test "should destroy style" do
    assert_difference('Style.count', -1) do
      delete style_url(@style), as: :json
    end

    assert_response 204
  end
end
