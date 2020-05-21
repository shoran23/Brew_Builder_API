class HopsController < ApplicationController
  before_action :set_hop, only: [:show, :update, :destroy]

  # GET /hops
  def index
    @hops = Hop.all

    render json: @hops
  end

  # GET /hops/1
  def show
    render json: @hop
  end

  # POST /hops
  def create
    @hop = Hop.new(hop_params)

    if @hop.save
      render json: @hop, status: :created, location: @hop
    else
      render json: @hop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hops/1
  def update
    if @hop.update(hop_params)
      render json: @hop
    else
      render json: @hop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hops/1
  def destroy
    @hop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hop
      @hop = Hop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hop_params
      params.require(:hop).permit(:name, :origin, :type, :alpha, :beta, :notes)
    end
end
