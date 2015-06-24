class Product < ActiveRecord::Base
  belongs_to :user
  has_many :purchases
  has_many :invoices, through: :purchases

  validates :name, :quantity, :cost_per_product, presence: true, on: :create
  validates :quantity, :cost_per_product, numericality: { greater_than_or_equal_to: 0 }
  validates :name, :quantity, absence: true, on: :update
end
