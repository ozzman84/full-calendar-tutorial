FactoryBot.define do
  factory :user do
    full_name { Faker::Movies::HarryPotter.character }
    email { Faker::Internet.email(domain: 'test.com') }
  end
end
