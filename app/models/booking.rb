class Booking < ApplicationRecord
  belongs_to :superpower
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validate :start_date_cannot_be_in_the_past
  validate :end_date_after_start_date

  def total_price
    return 0 if start_date.nil? || end_date.nil?

    days = (end_date - start_date).to_i + 1
    days * superpower.price
  end

  private

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_after_start_date
    if start_date.present? && end_date.present? && end_date < start_date
      errors.add(:end_date, "must be on or after the start date")
    end
  end
end
