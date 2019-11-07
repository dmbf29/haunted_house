class Trait < ApplicationRecord
  belongs_to :monster
  belongs_to :weakness
  validates :monster, uniqueness: { scope: :weakness }
end
