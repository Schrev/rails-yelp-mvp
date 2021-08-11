class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
  validates :name, :address, :category, presence: true, allow_blank: false
end
