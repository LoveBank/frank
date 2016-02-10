FactoryGirl.define do
  factory :frank_love_bank, :class => 'Frank::LoveBank' do
    note { Faker::Lorem.paragraph }
    rating { Faker::Number.between(1, 5)}
  end

end
