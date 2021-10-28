# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Memberモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { member.valid? }

    let!(:familycode) { create(:familycode) }
    let!(:member) { build(:member, familycode_id: familycode.id) }

    context 'nameカラム' do
      it '空欄でないこと' do
        member.name = ''
        is_expected.to eq false
      end
      it '2文字以上であること: 1文字は×' do
        member.name = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '2文字以上であること: 2文字は〇' do
        member.name = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '20文字以下であること: 20文字は〇' do
        member.name = Faker::Lorem.characters(number: 20)
        is_expected.to eq true
      end
      it '20文字以下であること: 21文字は×' do
        member.name = Faker::Lorem.characters(number: 21)
        is_expected.to eq false
      end
    end

    context 'name_kanaカラム' do
      it '空欄でないこと' do
        member.name_kana = ''
        is_expected.to eq false
      end
      it '2文字以上であること: 1文字は×' do
        member.name_kana = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '2文字以上であること: 2文字は〇' do
        member.name_kana = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '20文字以下であること: 20文字は〇' do
        member.name_kana = Faker::Lorem.characters(number: 20)
        is_expected.to eq true
      end
      it '20文字以下であること: 21文字は×' do
        member.name_kana = Faker::Lorem.characters(number: 21)
        is_expected.to eq false
      end
    end

    context 'nicknameカラム' do
      it '空欄でないこと' do
        member.nickname = ''
        is_expected.to eq false
      end
      it '1文字以上であること: 0文字は×' do
        member.nickname = Faker::Lorem.characters(number: 0)
        is_expected.to eq false
      end
      it '1文字以上であること: 1文字は〇' do
        member.nickname = Faker::Lorem.characters(number: 1)
        is_expected.to eq true
      end
      it '10文字以下であること: 10文字は〇' do
        member.nickname = Faker::Lorem.characters(number: 10)
        is_expected.to eq true
      end
      it '10文字以下であること: 11文字は×' do
        member.nickname = Faker::Lorem.characters(number: 11)
        is_expected.to eq false
      end
    end

    context 'emailカラム' do
      it '一意性があること' do
        member.email = other_member.email
        is_expected.to eq false
      end
    end

    context 'familycode_idカラム' do
      it '空欄でないこと' do
        member.familycode_id = ''
        is_expected.to eq false
      end
    end

    context 'telephone_numberカラム' do
      it '空欄でないこと' do
        member.telephone_number = ''
        is_expected.to eq false
      end
      it '10文字以上であること: 9文字は×' do
        member.telephone_number = Faker::Lorem.characters(number: 9)
        is_expected.to eq false
      end
      it '10文字以上であること: 10文字は〇' do
        member.telephone_number = Faker::Lorem.characters(number: 10)
        is_expected.to eq true
      end
      it '11文字以下であること: 11文字は〇' do
        member.telephone_number = Faker::Lorem.characters(number: 11)
        is_expected.to eq true
      end
      it '11文字以下であること: 12文字は×' do
        member.telephone_number = Faker::Lorem.characters(number: 12)
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(Member.reflect_on_association(:comments).macro).to eq :has_many
      end
    end
  end
end