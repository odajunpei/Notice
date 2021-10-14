class Comment < ApplicationRecord

  belongs_to :member
  belongs_to :post, optional: true

  validates :comment, presence: true
end
