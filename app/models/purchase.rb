class Purchase < ActiveRecord::Base
  belongs_to :product
  belongs_to :invoice
  accepts_nested_attributes_for :product
  before_create :create_confirmation_code

  after_validation :keep_product_in_sync

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validate :confirm_quantity

  private
  def keep_product_in_sync
    product.decrement!(:quantity, quantity)
  end

  def create_confirmation_code
    self.confirmation_code = SecureRandom.hex(2)
  end

  def confirm_quantity
    errors.add(:quantity, "Insufficient products to satisfy this Purchase!") unless self.quantity <= self.product.quantity
  end
end
