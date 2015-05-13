class Invoice < ActiveRecord::Base
  belongs_to :product
end
