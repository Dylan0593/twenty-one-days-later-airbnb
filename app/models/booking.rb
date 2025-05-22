class Booking < ApplicationRecord
  belongs_to :superpower
  belongs_to :user
  validates :start_date, :end_date, presence: true
  def total_price
    return 0 if start_date.nil? || end_date.nil?

    days = (end_date - start_date).to_i + 1
    days * superpower.price
  end
end
