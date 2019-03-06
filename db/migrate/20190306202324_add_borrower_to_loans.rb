class AddBorrowerToLoans < ActiveRecord::Migration[5.2]
  def change
    add_reference :loans, :borrower, foreign_key: true
  end
end
