class RemoveBorrowersFromLoans < ActiveRecord::Migration[5.2]
  def change
    remove_reference :loans, :borrowers, foreign_key: true
  end
end
