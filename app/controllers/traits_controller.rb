class TraitsController < ApplicationController
  def new
    @monster = Monster.find(params[:monster_id])
    @trait = Trait.new
    @weaknesses = Weakness.where.not(id: @monster.weaknesses).order(:name)
  end

  def create
    @monster = Monster.find(params[:monster_id])
    @trait = Trait.new(trait_params)
    @trait.monster = @monster
    if @trait.save
      redirect_to spooky_house_path(@monster.spooky_house)
    else
      @weaknesses = Weakness.where.not(id: @monster.weaknesses).order(:name)
      render :new
      # show new.html.erb
    end
  end

  private

  def trait_params
    params.require(:trait).permit(:weakness_id)
  end
end
