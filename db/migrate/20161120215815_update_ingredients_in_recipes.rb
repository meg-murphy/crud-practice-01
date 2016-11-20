class UpdateIngredientsInRecipes < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :ingredient_item, :ingredients
    remove_column :recipes, :ingredient_amount
  end
end
