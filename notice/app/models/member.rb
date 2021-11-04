class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :family_codes
  # has_many :member_familycodes
  belongs_to :familycode
  has_many :comments, dependent: :destroy
  # has_many :questions, dependent: :destroy

  attachment :profile_image



  #住所選択用
  enum address_area:{
    "---":0,
    北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,
    沖縄県:47
   }

  #性別選択用
   enum gender: {男性:1, 女性:2, 回答無し: 3}

  #退会機能
  def active_for_authentication?
    super && (self.is_deleted == false)
  end

  validates :name, length: { minimum: 2, maximum: 20 }
  validates :name_kana, length: { minimum: 2, maximum: 20 }
  validates :telephone_number, length: { minimum: 10, maximum: 11 }
  validates :familycode_id, presence: true
  validates :nickname, length: { minimum: 1, maximum: 10 }
  validates :email, uniqueness: true

end
