class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :kitchen
      t.string :type
      t.string :preference
      t.integer :amount
      t.time :time
      t.string :difficulty
      t.text :ingredients
      t.text :steps
      t.string :photo
      
      t.timestamps null: false
    end
  end
end
