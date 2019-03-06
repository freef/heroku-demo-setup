class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.references :books, foreign_key: true
      t.references :borrowers, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
