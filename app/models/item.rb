class Item < ApplicationRecord
  # self.table_name = :items
  validates :name, :price, :quantity, presence: true 
  validates :rating, numericality: {less_than_equal: 5, message: "Rating should be in between 1-5"}
  belongs_to :inventory
  has_many :invoices
end
