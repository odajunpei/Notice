class Familycode < ApplicationRecord

  has_many :users
  # has_many :member_familycodes
  has_many :members
  # , through: :member_familycodes
end
