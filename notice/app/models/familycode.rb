class Familycode < ApplicationRecord

  has_many :users
  has_many :members
  validates :famcode, uniqueness: true, length: {minimum: 8}

end
