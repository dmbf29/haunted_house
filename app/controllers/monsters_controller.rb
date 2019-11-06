class MonstersController < ApplicationController
  def new
    @spooky_house = SpookyHouse.find(params[:spooky_house_id])
    @monster = Monster.new # for the form
  end

  def create
    @spooky_house = SpookyHouse.find(params[:spooky_house_id])
    @monster = Monster.new(monster_params)
    @monster.spooky_house = @spooky_house
    if @monster.save
      redirect_to spooky_house_path(@spooky_house)
    else
      render :new
    end
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to spooky_house_path(@monster.spooky_house)
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :species, :catch_phrase, :image_url)
  end
end
