require 'rails_helper'

module Frank
  RSpec.describe Link, type: :model do
    let(:david) {FactoryGirl.build(:frank_profile)}
    let(:andy) {FactoryGirl.build(:frank_profile)}

    it 'has links' do
      andy.profiles << david
      andy.save!
      expect(andy.profiles.count).to eq 1
      expect(andy.profiles.first.firstname).to eq david.firstname
      expect(david.source_links.first.profile.firstname).to eq andy.firstname
      expect(Link.first.profile.firstname).to eq(andy.firstname)
      expect(Link.first.source_profile.firstname).to eq(david.firstname)
    end
  end

end
