FactoryGirl.define do
  factory :frank_comment, :class => 'Frank::Comment' do
    body { Faker::Lorem.paragraph }
  end

end
