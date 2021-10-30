class Familycode < ApplicationRecord

  has_many :users, dependent: :destroy
  has_many :members, dependent: :destroy
  validates :famcode, uniqueness: true, length: {minimum: 8}

end
