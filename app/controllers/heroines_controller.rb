class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @powers = Power.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])

    @heroine.update(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      render :edit
    end
  end



  private

  def heroine_params
    params.require(:heroine).permit!
  end
end
