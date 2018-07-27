class PowersController < ApplicationController
  def index
    # Allows for single search, but doesn't provide errors when it doesn't exists
    # If it doesn't exist it reveals regular index page
    power_par = params[:power]
     if power = Power.where('name LIKE ?', "%#{power_par}%").exists?
      power = Power.where('name LIKE ?', "%#{power_par}%")
      redirect_to power_path(power.ids)
    else
      @powers = Power.all
    end
  end

  def show
    @power = find_power
  end

  private
  def find_power
    Power.find(params[:id])
  end
end
