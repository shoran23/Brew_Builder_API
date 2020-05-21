require 'test_helper'

class RecipeStyleLedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_style_ledger = recipe_style_ledgers(:one)
  end

  test "should get index" do
    get recipe_style_ledgers_url, as: :json
    assert_response :success
  end

  test "should create recipe_style_ledger" do
    assert_difference('RecipeStyleLedger.count') do
      post recipe_style_ledgers_url, params: { recipe_style_ledger: { recipe_id: @recipe_style_ledger.recipe_id, style_id: @recipe_style_ledger.style_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_style_ledger" do
    get recipe_style_ledger_url(@recipe_style_ledger), as: :json
    assert_response :success
  end

  test "should update recipe_style_ledger" do
    patch recipe_style_ledger_url(@recipe_style_ledger), params: { recipe_style_ledger: { recipe_id: @recipe_style_ledger.recipe_id, style_id: @recipe_style_ledger.style_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_style_ledger" do
    assert_difference('RecipeStyleLedger.count', -1) do
      delete recipe_style_ledger_url(@recipe_style_ledger), as: :json
    end

    assert_response 204
  end
end
