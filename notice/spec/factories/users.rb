FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number: 10) }
    name_kana {Faker::Lorem.characters(number: 10)}
    nickname { Faker::Lorem.characters(number: 5)}
    telephone_number { Faker::Lorem.characters(number: 10)}
    # familycode_id { Faker::Lorem.characters(number: 5)}
    familycode_id { Faker::Number.between(from: 1, to: 10)}
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end


end