class SpookyHousesController < ApplicationController
  before_action :set_spooky_house, only: [:show, :edit, :update, :destroy]

  # GET /spooky_houses/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spooky_house
      @spooky_house = SpookyHouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spooky_house_params
      params.require(:spooky_house).permit(:name, :banner_url)
    end
end
