FactoryGirl.define do
  factory :event do
    name                "House"
    description         { Faker::Lorem.sentence(1) }
    location            "Melkweg"
    price               40
    capacity            500
    includes_food       true
    includes_drinks     { Faker::Lorem.sentence(40) }
    starts_at           { Faker::Address.city }
    active              true
    user                { build(:user) }
    #category            { build (:category)}

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
