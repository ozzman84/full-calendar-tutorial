FactoryBot.define do
  factory :lodging_confirmation do
    status { nil }
    date { "2023-09-25" }
    user { nil }
    lodging { nil }
  end
end
