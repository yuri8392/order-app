FactoryBot.define do
  factory :capacity do
    client_number {Faker::Number.between(from: 10000)}
    client_name {Faker::Company.name}
    capacity {Faker::Number.between(from: 0)} 
  end
end
