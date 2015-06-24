class Release < ActiveRecord::Base
  belongs_to :user
  belongs_to :purchase

  validates_presence_of :confirmation_code, :user, :purchase
end
