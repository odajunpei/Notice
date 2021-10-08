class Post < ApplicationRecord

  belongs_to :user
  has_many :post, dependent: :destroy
end
