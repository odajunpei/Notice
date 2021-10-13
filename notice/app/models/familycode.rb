class Familycode < ApplicationRecord

  has_many :users
  has_many :members
  validates :family_code, uniqueness: true, length: {minimum: 8}
end
