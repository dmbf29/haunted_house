class SpookyHouse < ApplicationRecord
  has_many :monsters
  # @spooky_house.monsters
  validates :name, presence: true
end
