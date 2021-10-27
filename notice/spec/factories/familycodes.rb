FactoryBot.define do
  factory :familycode do
    famcode { Faker::Lorem.characters(number: 10) }
  end
end