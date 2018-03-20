class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders



  validates :name, :price, presence: true
  # validates :size, inclusion: { in: %w(small medium large),  message: "%{value} is not a valid size" }
  validates :price, numericality: true
end
