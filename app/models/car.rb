class Car < ApplicationRecord
  has_one_attached :preview_img

  validates :title, presence: true
  validates :preview_img, presence: true
  validates :brand, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
