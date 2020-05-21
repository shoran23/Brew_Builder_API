class RecipeGrainLedgersController < ApplicationController
  before_action :set_recipe_grain_ledger, only: [:show, :update, :destroy]

  # GET /recipe_grain_ledgers
  def index
    @recipe_grain_ledgers = RecipeGrainLedger.all

    render json: @recipe_grain_ledgers.to_json(include: [:recipe, :grain])
  end

  # GET /recipe_grain_ledgers/1
  def show
    render json: @recipe_grain_ledger.to_json(include: [:recipe, :grain])
  end

  # POST /recipe_grain_ledgers
  def create
    @recipe_grain_ledger = RecipeGrainLedger.new(recipe_grain_ledger_params)

    if @recipe_grain_ledger.save
      render json: @recipe_grain_ledger, status: :created, location: @recipe_grain_ledger
    else
      render json: @recipe_grain_ledger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_grain_ledgers/1
  def update
    if @recipe_grain_ledger.update(recipe_grain_ledger_params)
      render json: @recipe_grain_ledger
    else
      render json: @recipe_grain_ledger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_grain_ledgers/1
  def destroy
    @recipe_grain_ledger.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_grain_ledger
      @recipe_grain_ledger = RecipeGrainLedger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_grain_ledger_params
      params.require(:recipe_grain_ledger).permit(:recipe_id, :grain_id, :qty)
    end
end
