class Car < ApplicationRecord
  has_one_attached :image
  has_one :rent
  belongs_to :category
  belongs_to :brand

end
