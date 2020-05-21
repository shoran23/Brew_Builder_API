require 'test_helper'

class RecipeGrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_grain = recipe_grains(:one)
  end

  test "should get index" do
    get recipe_grains_url, as: :json
    assert_response :success
  end

  test "should create recipe_grain" do
    assert_difference('RecipeGrain.count') do
      post recipe_grains_url, params: { recipe_grain: { grain_id: @recipe_grain.grain_id, qty: @recipe_grain.qty, recipe_id: @recipe_grain.recipe_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_grain" do
    get recipe_grain_url(@recipe_grain), as: :json
    assert_response :success
  end

  test "should update recipe_grain" do
    patch recipe_grain_url(@recipe_grain), params: { recipe_grain: { grain_id: @recipe_grain.grain_id, qty: @recipe_grain.qty, recipe_id: @recipe_grain.recipe_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_grain" do
    assert_difference('RecipeGrain.count', -1) do
      delete recipe_grain_url(@recipe_grain), as: :json
    end

    assert_response 204
  end
end
