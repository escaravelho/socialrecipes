class TypeOfFoodsController < ApplicationController
  def new
    @type_of_food = TypeOfFood.new
  end

  def create
    @type_of_food = TypeOfFood.create(food_params)
    if @type_of_food.save
      redirect_to @type_of_food
    else
      flash.now[:error] = 'Insira o dado obrigatório!'
      render 'new'
    end
  end

  def show
    @type_of_food = TypeOfFood.find(params[:id])
  end

  private

  def food_params
    params.require(:type_of_food).permit(:name)
  end
end
