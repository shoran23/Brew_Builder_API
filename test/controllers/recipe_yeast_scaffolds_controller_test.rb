require 'test_helper'

class RecipeYeastScaffoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_yeast_scaffold = recipe_yeast_scaffolds(:one)
  end

  test "should get index" do
    get recipe_yeast_scaffolds_url, as: :json
    assert_response :success
  end

  test "should create recipe_yeast_scaffold" do
    assert_difference('RecipeYeastScaffold.count') do
      post recipe_yeast_scaffolds_url, params: { recipe_yeast_scaffold: { qty: @recipe_yeast_scaffold.qty, recipe_id: @recipe_yeast_scaffold.recipe_id, yeast_id: @recipe_yeast_scaffold.yeast_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_yeast_scaffold" do
    get recipe_yeast_scaffold_url(@recipe_yeast_scaffold), as: :json
    assert_response :success
  end

  test "should update recipe_yeast_scaffold" do
    patch recipe_yeast_scaffold_url(@recipe_yeast_scaffold), params: { recipe_yeast_scaffold: { qty: @recipe_yeast_scaffold.qty, recipe_id: @recipe_yeast_scaffold.recipe_id, yeast_id: @recipe_yeast_scaffold.yeast_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_yeast_scaffold" do
    assert_difference('RecipeYeastScaffold.count', -1) do
      delete recipe_yeast_scaffold_url(@recipe_yeast_scaffold), as: :json
    end

    assert_response 204
  end
end
