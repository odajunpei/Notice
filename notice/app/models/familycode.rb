class Familycode < ApplicationRecord

  # include Hashid::Rails #id暗号化用記述

  has_many :users
  has_many :members
  validates :family_code, uniqueness: true, length: {minimum: 8}

  def to_param
    family_code
  end
end
