class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def new
    @weapon = Weapon.new
  end

  def create
    @weapon = Weapon.create(weapon_params)

    if @weapon.save
      redirect_to weapons_path
    else
      render :new
    end
  end

  def destroy
    @weapon = Weapon.find(params[:id])
    @weapon.destroy

    redirect_to root_path
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  private
    def weapon_params
      params.require(:weapons).permit(:name, :description, :power_base, :power_step, :level)
    end
end
