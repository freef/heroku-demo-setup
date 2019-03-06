class AddIngredientToMeals < ActiveRecord::Migration[5.2]
  def change
    add_reference :meals, :ingredient, foreign_key: true
  end
end
