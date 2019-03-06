class AddBookToLoans < ActiveRecord::Migration[5.2]
  def change
    add_reference :loans, :book, foreign_key: true
  end
end
