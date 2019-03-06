class LoanSerializer < ActiveModel::Serializer
  attributes :id, :date, :book, :borrower, :due
  has_one :book
  has_one :borrower

  def due
    object.date+14.days
  end
end
