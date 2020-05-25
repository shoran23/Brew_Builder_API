class RecipeHopLedgersController < ApplicationController
  before_action :set_recipe_hop_ledger, only: [:show, :update, :destroy]

  # GET /recipe_hop_ledgers
  def index
    @recipe_hop_ledgers = RecipeHopLedger.all

    render json: @recipe_hop_ledgers.to_json(include: [:recipe, :hop])
  end

  # GET /recipe_hop_ledgers/1
  def show
    render json: @recipe_hop_ledger.to_json(include: [:recipe, :hop])
  end

  # POST /recipe_hop_ledgers
  def create
    @recipe_hop_ledger = RecipeHopLedger.new(recipe_hop_ledger_params)

    if @recipe_hop_ledger.save
      render json: @recipe_hop_ledger, status: :created, location: @recipe_hop_ledger
    else
      render json: @recipe_hop_ledger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_hop_ledgers/1
  def update
    if @recipe_hop_ledger.update(recipe_hop_ledger_params)
      render json: @recipe_hop_ledger
    else
      render json: @recipe_hop_ledger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_hop_ledgers/1
  def destroy
    @recipe_hop_ledger.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_hop_ledger
      @recipe_hop_ledger = RecipeHopLedger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_hop_ledger_params
      params.require(:recipe_hop_ledger).permit(:recipe_id, :hop_id, :qty, :time)
    end
end
