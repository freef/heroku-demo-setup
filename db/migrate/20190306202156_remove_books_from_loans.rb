class RemoveBooksFromLoans < ActiveRecord::Migration[5.2]
  def change
    remove_reference :loans, :books, foreign_key: true
  end
end
