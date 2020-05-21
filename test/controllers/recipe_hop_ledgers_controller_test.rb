require 'test_helper'

class RecipeHopLedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_hop_ledger = recipe_hop_ledgers(:one)
  end

  test "should get index" do
    get recipe_hop_ledgers_url, as: :json
    assert_response :success
  end

  test "should create recipe_hop_ledger" do
    assert_difference('RecipeHopLedger.count') do
      post recipe_hop_ledgers_url, params: { recipe_hop_ledger: { hop_id: @recipe_hop_ledger.hop_id, qty: @recipe_hop_ledger.qty, recipe_id: @recipe_hop_ledger.recipe_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_hop_ledger" do
    get recipe_hop_ledger_url(@recipe_hop_ledger), as: :json
    assert_response :success
  end

  test "should update recipe_hop_ledger" do
    patch recipe_hop_ledger_url(@recipe_hop_ledger), params: { recipe_hop_ledger: { hop_id: @recipe_hop_ledger.hop_id, qty: @recipe_hop_ledger.qty, recipe_id: @recipe_hop_ledger.recipe_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_hop_ledger" do
    assert_difference('RecipeHopLedger.count', -1) do
      delete recipe_hop_ledger_url(@recipe_hop_ledger), as: :json
    end

    assert_response 204
  end
end
