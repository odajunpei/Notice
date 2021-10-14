class Post < ApplicationRecord

  belongs_to :user
  attachment :profile_image
  has_many :comments

  validates :post, presence: true
end
