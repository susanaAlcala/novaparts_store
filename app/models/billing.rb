class Billing < ApplicationRecord
  belongs_to :user
  has_many :orders

  def self.get_total
    pluck("price * quantity").sum()
  end

end
