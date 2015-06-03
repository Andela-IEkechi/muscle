class Purchase < ActiveRecord::Base
  belongs_to :product
  belongs_to :invoice
  accepts_nested_attributes_for :product
end
