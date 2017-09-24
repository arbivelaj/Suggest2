class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review
  validates :title, presence: true
  validates :desription, presence: true
end
