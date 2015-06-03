class Product < ActiveRecord::Base
  belongs_to :user
  has_many :purchases
  has_many :invoices, through: :purchases
end
