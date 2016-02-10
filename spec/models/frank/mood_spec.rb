require 'rails_helper'

module Frank
  RSpec.describe Mood, type: :model do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:frank_mood)).to be_valid
    end

    it 'contains a note' do
      expect(FactoryGirl.build(:frank_mood).note).to_not be_nil
    end

  end
end
