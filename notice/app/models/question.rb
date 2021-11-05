class Question < ApplicationRecord
  belongs_to :member
  belongs_to :user

  validates :body, presence: true
  validates :choices1, length: { minimum: 1, maximum: 10 }
  validates :choices2, length: { minimum: 1, maximum: 10 }
end
