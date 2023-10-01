FactoryBot.define do
  factory :lodging do
    address { Faker::Address.full_address }
    rent { rand(50..1000) }
    start_date { 1.month.ago }
    end_date { 1.month.from_now }
  end
end
