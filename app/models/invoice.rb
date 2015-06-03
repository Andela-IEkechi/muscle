class Invoice < ActiveRecord::Base
  has_many :purchases

  has_many :products,
           :through => :purchases

  accepts_nested_attributes_for :purchases,
                                :allow_destroy => true
  accepts_nested_attributes_for :products
end
