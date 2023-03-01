FactoryBot.define do
  factory :memo do
    title { Faker::Lorem.sentence }
    memo { Faker::Lorem.sentence }
    association :user
  end
end
