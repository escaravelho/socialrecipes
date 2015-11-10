class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      flash.now[:error] = 'Insira os dados obrigatórios'
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,
                                   :kitchen_id,
                                   :type_of_food_id,
                                   :preference,
                                   :amount,
                                   :preparation_time,
                                   :difficulty,
                                   :ingredients,
                                   :steps,
                                   :photo)
  end
end
