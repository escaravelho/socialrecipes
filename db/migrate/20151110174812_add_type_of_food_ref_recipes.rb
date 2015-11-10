class AddTypeOfFoodRefRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :type_of_food, index: true
  end
end
