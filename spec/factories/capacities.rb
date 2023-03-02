FactoryBot.define do
  factory :capacity do
    client_number { Faker::Number.between(from: 1000, to: 9999) }
    client_name { Faker::Company.name }
    capacity { Faker::Number.between(from: 0, to: 999) }
  end
end
