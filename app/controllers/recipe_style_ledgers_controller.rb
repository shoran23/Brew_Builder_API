class RecipeStyleLedgersController < ApplicationController
  before_action :set_recipe_style_ledger, only: [:show, :update, :destroy]

  # GET /recipe_style_ledgers
  def index
    @recipe_style_ledgers = RecipeStyleLedger.all

    render json: @recipe_style_ledgers.to_json(include: [:recipe, :style])
  end

  # GET /recipe_style_ledgers/1
  def show
    render json: @recipe_style_ledger.to_json(include: [:recipe, :style])
  end

  # POST /recipe_style_ledgers
  def create
    @recipe_style_ledger = RecipeStyleLedger.new(recipe_style_ledger_params)

    if @recipe_style_ledger.save
      render json: @recipe_style_ledger, status: :created, location: @recipe_style_ledger
    else
      render json: @recipe_style_ledger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_style_ledgers/1
  def update
    if @recipe_style_ledger.update(recipe_style_ledger_params)
      render json: @recipe_style_ledger
    else
      render json: @recipe_style_ledger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_style_ledgers/1
  def destroy
    @recipe_style_ledger.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_style_ledger
      @recipe_style_ledger = RecipeStyleLedger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_style_ledger_params
      params.require(:recipe_style_ledger).permit(:recipe_id, :style_id)
    end
end
