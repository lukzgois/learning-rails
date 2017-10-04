class Map < ApplicationRecord
  has_many :matches, dependent: destroy

  validates :name, presence: true
  validates :exhibition_name, presence: true
  validates :map_type, presence: true
end
