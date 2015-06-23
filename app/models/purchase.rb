class Purchase < ActiveRecord::Base
  belongs_to :product
  belongs_to :invoice
  accepts_nested_attributes_for :product
  before_save :create_confirmation_code

  def create_confirmation_code
    self.confirmation_code = SecureRandom.hex(2)
  end
end
