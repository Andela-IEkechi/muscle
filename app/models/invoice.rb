class Invoice < ActiveRecord::Base
  belongs_to :product # todo remove this association

  serialize :purchase
end
