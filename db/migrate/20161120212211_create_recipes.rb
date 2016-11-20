class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredient_item
      t.integer :ingredient_amount
      t.string :image
      t.string :directions
      t.integer :prep_time

      t.timestamps
    end
  end
end
