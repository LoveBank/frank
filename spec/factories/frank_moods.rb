FactoryGirl.define do
  factory :frank_mood, :class => 'Frank::Mood' do
    note { Faker::Lorem.paragraph }
    rating { Faker::Number.between(1, 5)}
  end

end
