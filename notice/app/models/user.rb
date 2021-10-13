class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :familycode
  has_many :posts, dependent: :destroy

  attachment :profile_image

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :telephone_number, presence: true
  validates :familycode_id, presence: true
end
