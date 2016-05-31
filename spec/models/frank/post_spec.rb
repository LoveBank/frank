require 'rails_helper'

module Frank
  RSpec.describe Post, type: :model do
    let(:profile) { FactoryGirl.create(:frank_profile) }
    subject {Frank::Post.new(:title => 'Example Title', :body => Faker::Lorem.paragraph)}

    it 'is a valid Post instance' do
      expect(subject).to be_valid
    end

    it 'has a valid title' do
      expect(subject.title).to eql 'Example Title'
    end
  end
end
