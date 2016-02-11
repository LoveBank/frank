require 'rails_helper'

module Frank
  RSpec.describe Profile, type: :model do
    it 'has a valid factory' do
      expect(FactoryGirl.create(:frank_profile)).to be_valid
    end

    it 'is invalid without a firstname' do
      expect(FactoryGirl.build(:frank_profile, firstname: nil)).to_not be_valid
    end

    it 'is invalid with duplicate email case insensitive check' do
      FactoryGirl.create(:frank_profile, email: 'jared@jaredjennings.org')
      expect(FactoryGirl.build(:frank_profile, email: 'jared@jaredjennings.org')).to_not be_valid
    end

    it 'is invalid with duplicate email' do
      FactoryGirl.create(:frank_profile, email: 'jared@jaredjennings.org')
      expect(FactoryGirl.build(:frank_profile, email: 'JareD@jaredjennings.org')).to_not be_valid
    end

    it 'contains a phone number' do
      expect(FactoryGirl.build(:frank_profile).phone).to_not be_nil
    end

    context 'partners_entries' do
      let(:user) { FactoryGirl.build_stubbed(:frank_profile) }

      it 'partner has entries' do
        FactoryGirl.create_list(:frank_entry, 2, :linked_profile_id => user.id, :private => false, :received => true)
        expect(user.partners_entries.count).to eql 2
      end

      it 'does not show private entries' do
        FactoryGirl.create_list(:frank_entry, 2, :linked_profile_id => user.id, :private => true, :received => true)
        expect(user.partners_entries.count).to eql 0
      end
    end
  end
end
