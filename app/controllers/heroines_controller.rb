class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def search
    @heroines = []
      Heroine.all.each do |h|
      if h.heroine_power == params[:powers]
        @heroines << h
      end
    end
    render :index
  end

  def new
    @heroine = Heroine.new

  end

  def create

    @heroine = Heroine.create(heroine_params)
    if @heroine.save
      redirect_to @heroine
    else
      @heroine.errors
      # binding.pry
      render :new
    end
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
