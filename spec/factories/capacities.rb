FactoryBot.define do
  factory :capacity do
    client_number {Faker::Number.between(from: 4, to: 8)}
    client_name {Faker::company}
    capacity {Faker::Number.between(from: 0)} 
  end
end
