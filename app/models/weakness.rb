class Weakness < ApplicationRecord
  has_many :traits
  has_many :monsters, through: :traits
  validates :name, presence: true, uniqueness: true

  def to_label
    name.capitalize
  end
end
