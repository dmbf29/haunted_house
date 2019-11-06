class Monster < ApplicationRecord
  belongs_to :spooky_house
  validates :name, presence: true
end
