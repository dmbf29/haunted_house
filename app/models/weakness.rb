class Weakness < ApplicationRecord
  has_many :traits
  has_many :monsters, through: :traits
  validates :name, presence: true, uniqueness: true
end
