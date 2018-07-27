class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    binding.pry
    @power = Power.find(params[:id])
  end

end
