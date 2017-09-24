class Review < ApplicationRecord
  belongs_to :user
  CATEGORIES = %w(restaurant bar shop place)

  validates :title, presence: true
  validates :desription, presence: true
  validates :item, presence: true
  validates :place, presence: true

  validates :location, presence: true
  validates :desription, length: { minimum: 20 }
  validates :category, inclusion: { in: CATEGORIES }
  validates :rating_spot, presence: true, numericality: {only_integer: true}, inclusion: {in: [0,1,2,3,4,5], allow_nil: false }


end
