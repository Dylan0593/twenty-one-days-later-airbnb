class Superpower < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :name, presence: true
  validates :price, presence: true
end
