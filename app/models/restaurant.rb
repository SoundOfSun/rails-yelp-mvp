class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # dependent: :destroy will destroy the review when...
  # we destroy a restaurant.
  validates :name, presence: true
  validates :address, presence:true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end

# No ruby message, conflicts with simple-form format I think
