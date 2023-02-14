class Inventory < ApplicationRecord
  # self.table_name = :inventories
  validates :inventory_name,presence: true 
  has_many :items, dependent: :destroy
end
