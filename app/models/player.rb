class Player < ApplicationRecord
  has_many :matches, dependent: :destroy

  validates :name, presence: true
  validates :age, presence: true
end
