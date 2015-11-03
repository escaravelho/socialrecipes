class ChangeRecipes < ActiveRecord::Migration
  def change
    change_column :recipes, :time, :integer
    rename_column :recipes, :time, :preparation_time
    rename_column :recipes, :type, :type_of_food
  end
end
