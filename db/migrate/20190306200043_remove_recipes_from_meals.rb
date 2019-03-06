class RemoveRecipesFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_reference :meals, :recipes, foreign_key: true
  end
end
