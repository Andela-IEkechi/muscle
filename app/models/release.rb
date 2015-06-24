class Release < ActiveRecord::Base
  belongs_to :user
  belongs_to :purchase
  before_create :check_if_collected
  after_create :mark_as_collected

  validates_presence_of :confirmation_code, :user, :purchase
  #todo validates uniqueness of a purchase how?

  private

    def check_if_collected
      self.purchase.collected == false
    end

    def mark_as_collected
      self.purchase.update_attributes!(collected: true)
    end
end
