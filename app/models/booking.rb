class Booking < ApplicationRecord
  belongs_to :superpower
  belongs_to :user

  def total_price
    days = (end_date - start_date).to_i + 1
    days * superpower.price
  end
end
