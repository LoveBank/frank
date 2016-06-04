require 'rails_helper'

module Frank
  RSpec.describe Insight, type: :model do
    subject { FactoryGirl.create(:frank_insight) }

    it 'has a valid factory' do
      expect(subject).to be_valid
    end

    it 'persists' do
      expect(subject).to be_persisted
    end

  end
end
