require 'test_helper'

class RecipeYeastLedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_yeast_ledger = recipe_yeast_ledgers(:one)
  end

  test "should get index" do
    get recipe_yeast_ledgers_url, as: :json
    assert_response :success
  end

  test "should create recipe_yeast_ledger" do
    assert_difference('RecipeYeastLedger.count') do
      post recipe_yeast_ledgers_url, params: { recipe_yeast_ledger: { qty: @recipe_yeast_ledger.qty, recipe_id: @recipe_yeast_ledger.recipe_id, yeast_id: @recipe_yeast_ledger.yeast_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_yeast_ledger" do
    get recipe_yeast_ledger_url(@recipe_yeast_ledger), as: :json
    assert_response :success
  end

  test "should update recipe_yeast_ledger" do
    patch recipe_yeast_ledger_url(@recipe_yeast_ledger), params: { recipe_yeast_ledger: { qty: @recipe_yeast_ledger.qty, recipe_id: @recipe_yeast_ledger.recipe_id, yeast_id: @recipe_yeast_ledger.yeast_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_yeast_ledger" do
    assert_difference('RecipeYeastLedger.count', -1) do
      delete recipe_yeast_ledger_url(@recipe_yeast_ledger), as: :json
    end

    assert_response 204
  end
end
