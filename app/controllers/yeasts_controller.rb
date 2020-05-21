class YeastsController < ApplicationController
  before_action :set_yeast, only: [:show, :update, :destroy]

  # GET /yeasts
  def index
    @yeasts = Yeast.all

    render json: @yeasts
  end

  # GET /yeasts/1
  def show
    render json: @yeast
  end

  # POST /yeasts
  def create
    @yeast = Yeast.new(yeast_params)

    if @yeast.save
      render json: @yeast, status: :created, location: @yeast
    else
      render json: @yeast.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yeasts/1
  def update
    if @yeast.update(yeast_params)
      render json: @yeast
    else
      render json: @yeast.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yeasts/1
  def destroy
    @yeast.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yeast
      @yeast = Yeast.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yeast_params
      params.require(:yeast).permit(:name, :lab, :type, :form, :temp_low, :temp_high, :attenuation, :flocculation, :notes)
    end
end
