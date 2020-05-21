class GrainsController < ApplicationController
  before_action :set_grain, only: [:show, :update, :destroy]

  # GET /grains
  def index
    @grains = Grain.all

    render json: @grains
  end

  # GET /grains/1
  def show
    render json: @grain
  end

  # POST /grains
  def create
    @grain = Grain.new(grain_params)

    if @grain.save
      render json: @grain, status: :created, location: @grain
    else
      render json: @grain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grains/1
  def update
    if @grain.update(grain_params)
      render json: @grain
    else
      render json: @grain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grains/1
  def destroy
    @grain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grain
      @grain = Grain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grain_params
      params.require(:grain).permit(:name, :origin, :mash, :color, :power, :potential, :max, :notes)
    end
end
