# typed: false

FactoryBot.define do
  factory :address do
    street_address { Faker::Address.street_address }
    postal_code { Faker::Address.postcode }
  end
end
