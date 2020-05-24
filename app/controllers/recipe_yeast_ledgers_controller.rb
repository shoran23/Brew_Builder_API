class RecipeYeastLedgersController < ApplicationController
  before_action :set_recipe_yeast_ledger, only: [:show, :update, :destroy]

  # GET /recipe_yeast_ledgers
  def index
    @recipe_yeast_ledgers = RecipeYeastLedger.all

    render json: @recipe_yeast_ledgers
  end

  # GET /recipe_yeast_ledgers/1
  def show
    render json: @recipe_yeast_ledger
  end

  # POST /recipe_yeast_ledgers
  def create
    @recipe_yeast_ledger = RecipeYeastLedger.new(recipe_yeast_ledger_params)

    if @recipe_yeast_ledger.save
      render json: @recipe_yeast_ledger, status: :created, location: @recipe_yeast_ledger
    else
      render json: @recipe_yeast_ledger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_yeast_ledgers/1
  def update
    if @recipe_yeast_ledger.update(recipe_yeast_ledger_params)
      render json: @recipe_yeast_ledger
    else
      render json: @recipe_yeast_ledger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_yeast_ledgers/1
  def destroy
    @recipe_yeast_ledger.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_yeast_ledger
      @recipe_yeast_ledger = RecipeYeastLedger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_yeast_ledger_params
      params.require(:recipe_yeast_ledger).permit(:recipe_id, :yeast_id, :qty)
    end
end
