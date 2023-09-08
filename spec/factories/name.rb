FactoryBot.define do
  factory :bingo_item do
    name { Faker::Hipster.word }
  end
end