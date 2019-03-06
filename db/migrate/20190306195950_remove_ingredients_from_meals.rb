class RemoveIngredientsFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_reference :meals, :ingredients, foreign_key: true
  end
end
