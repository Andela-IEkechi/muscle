class Invoice < ActiveRecord::Base
  belongs_to :product

  serialize :orders
end
