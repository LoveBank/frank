require 'rails_helper'

module Frank
  RSpec.describe Family, type: :model do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:frank_family)).to be_valid
    end

    it 'is invalid without a name' do
      expect(FactoryGirl.build(:frank_family, name: nil)).to_not be_valid
    end
  end
end
