class Product < ApplicationRecord
  has_one_attached :image

  def thumbnail
    image.variant(resize: "300x300")
  end
end
