require 'rails_helper'

RSpec.describe "Userモデルのテスト", type: :model do
  describe 'バリデーションのテスト' do
    subject { user.valid? }

    let!(:user) { create(:user) }
    let(:user) { build(:user) }

    context 'nameカラム' do
      it '空欄でないこと' do
        user.name = ''
        is_expected.to eq false
      end
      it '2文字以上であること: 1文字は×' do
        user.name = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '2文字以上であること: 2文字は〇' do
        user.name = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '20文字以下であること: 20文字は〇' do
        user.name = Faker::Lorem.characters(number: 20)
        is_expected.to eq true
      end
      it '20文字以下であること: 21文字は×' do
        user.name = Faker::Lorem.characters(number: 21)
        is_expected.to eq false
      end
    end

    context 'name_kanaカラム' do
      it '空欄でないこと' do
        user.name_kana = ''
        is_expected.to eq false
      end
      it '2文字以上であること: 1文字は×' do
        user.name_kana = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '2文字以上であること: 2文字は〇' do
        user.name_kana = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '20文字以下であること: 20文字は〇' do
        user.name_kana = Faker::Lorem.characters(number: 20)
        is_expected.to eq true
      end
      it '20文字以下であること: 21文字は×' do
        user.name_kana = Faker::Lorem.characters(number: 21)
        is_expected.to eq false
      end
    end

    context 'nicknameカラム' do
      it '空欄でないこと' do
        user.name_kana = ''
        is_expected.to eq false
      end
      it '1文字以上であること: 0文字は×' do
        user.name_kana = Faker::Lorem.characters(number: 0)
        is_expected.to eq false
      end
      it '1文字以上であること: 1文字は〇' do
        user.name_kana = Faker::Lorem.characters(number: 1)
        is_expected.to eq true
      end
      it '10文字以下であること: 10文字は〇' do
        user.name_kana = Faker::Lorem.characters(number: 10)
        is_expected.to eq true
      end
      it '10文字以下であること: 11文字は×' do
        user.name_kana = Faker::Lorem.characters(number: 11)
        is_expected.to eq false
      end
    end

    context 'emailカラム' do
      it '一意性があること' do
        user.email = other_user.email
        is_expected.to eq false
      end
    end

    context 'familycode_idカラム' do
      it '空欄でないこと' do
        user.familycode_id = ''
        is_expected.to eq false
      end
    end

    context 'telephone_numberカラム' do
      it '空欄でないこと' do
        user.telephone_number = ''
        is_expected.to eq false
      end
      it '10文字以上であること: 9文字は×' do
        user.telephone_number = Faker::Lorem.characters(number: 9)
        is_expected.to eq false
      end
      it '10文字以上であること: 10文字は〇' do
        user.telephone_number = Faker::Lorem.characters(number: 10)
        is_expected.to eq true
      end
      it '11文字以下であること: 11文字は〇' do
        user.telephone_number = Faker::Lorem.characters(number: 11)
        is_expected.to eq true
      end
      it '11文字以下であること: 12文字は×' do
        user.telephone_number = Faker::Lorem.characters(number: 12)
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Postモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:posts).macro).to eq :has_many
      end
    end
  end
end