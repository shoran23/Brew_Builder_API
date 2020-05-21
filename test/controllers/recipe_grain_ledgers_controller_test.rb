require 'test_helper'

class RecipeGrainLedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_grain_ledger = recipe_grain_ledgers(:one)
  end

  test "should get index" do
    get recipe_grain_ledgers_url, as: :json
    assert_response :success
  end

  test "should create recipe_grain_ledger" do
    assert_difference('RecipeGrainLedger.count') do
      post recipe_grain_ledgers_url, params: { recipe_grain_ledger: { grain_id: @recipe_grain_ledger.grain_id, qty: @recipe_grain_ledger.qty, recipe_id: @recipe_grain_ledger.recipe_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_grain_ledger" do
    get recipe_grain_ledger_url(@recipe_grain_ledger), as: :json
    assert_response :success
  end

  test "should update recipe_grain_ledger" do
    patch recipe_grain_ledger_url(@recipe_grain_ledger), params: { recipe_grain_ledger: { grain_id: @recipe_grain_ledger.grain_id, qty: @recipe_grain_ledger.qty, recipe_id: @recipe_grain_ledger.recipe_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_grain_ledger" do
    assert_difference('RecipeGrainLedger.count', -1) do
      delete recipe_grain_ledger_url(@recipe_grain_ledger), as: :json
    end

    assert_response 204
  end
end
