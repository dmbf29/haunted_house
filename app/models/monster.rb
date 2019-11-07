class Monster < ApplicationRecord
  belongs_to :spooky_house
  has_many :traits, dependent: :destroy
  has_many :weaknesses, through: :traits
  validates :name, presence: true
end
