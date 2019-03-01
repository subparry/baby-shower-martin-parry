class Guest < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :gifts
end
