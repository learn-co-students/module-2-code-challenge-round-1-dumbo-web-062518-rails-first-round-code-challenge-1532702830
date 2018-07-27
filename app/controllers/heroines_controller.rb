class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def new
    @heroine = Heroine.new
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  private
    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power_id)
    end
end
# 2.	On the heroines index page, a heroine's name should link to the heroine's show page. 
