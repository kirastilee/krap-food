class Food < ApplicationRecord
  # belongs_to :restaurant
  # belongs_to :promo
  has_many :food_options

  has_one_attached :image
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: "must be a valid image format" },
                            size: { less_than: 5.megabytes, message: "should be less than 5MB" }
end
