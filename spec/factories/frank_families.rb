FactoryGirl.define do
  factory :frank_family, :class => 'Frank::Family' do
    name { Faker::Name.name }
  end

end
