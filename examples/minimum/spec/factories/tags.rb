# typed: false

FactoryBot.define do
  factory :tag do
    association :entity, factory: :author
    name { Faker::Lorem.word.capitalize }
  end
end
