class Booking < ApplicationRecord
  belongs_to :superpower
  belongs_to :user
end
