class Release < ActiveRecord::Base
  belongs_to :user
  belongs_to :purchase
  before_create :check_if_collected
  after_create :mark_as_collected

  validates :confirmation_code, :user, :purchase, presence: true
  validate :confirmation_code_check
  #todo validates uniqueness of a purchase how?

  private

  def confirmation_code_check
    errors.add(:confirmation_code, "Wrong confirmation code!") unless params[:confirmation_code] == purchase.confirmation_code
  end

  def check_if_collected
    self.purchase.collected == false
  end

  def mark_as_collected
    self.purchase.update_attributes!(collected: true)
  end
end
