class Consignment < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :product_id, :quantity, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validate :validate_product_id


  private

  def validate_product_id
    errors.add(:product_id, "we have no such product!") unless Product.exists?(self.product_id)
  end

  after_commit :keep_product_in_sync, on: :create

  def keep_product_in_sync
    product.increment!(:quantity, quantity)
  end
end
