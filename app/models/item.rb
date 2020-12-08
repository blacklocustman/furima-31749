class Item < ApplicationRecord
  belongs_to :user
  belongs_to :Purchase record
  has_one_attached :image

  validates :text, presence: true
end
