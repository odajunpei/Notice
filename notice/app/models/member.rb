class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :family_codes
  # has_many :member_familycodes
  belongs_to :familycode
  # , through: :member_familycodes
  has_many :comments, dependent: :destroy

  attachment :profile_image
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :telephone_number, presence: true
  validates :familycode_id, presence: true
end
