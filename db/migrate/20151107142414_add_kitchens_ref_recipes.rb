class AddKitchensRefRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :kitchen, index: true
  end
end
