class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
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

  def show
    @heroine = Heroine.find(params[:id])
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])

    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      render :edit
    end
  end

  def search
    @heroines = Heroine.all

    if !params[:q].empty?
      @power = Power.find_by(name: params[:q])
      @heroines = Heroine.where("power_id = #{@power.id}")
    else
      render :index
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
