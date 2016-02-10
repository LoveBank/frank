require 'rails_helper'

module Frank
  RSpec.describe Event, type: :model do
    subject { create(:frank_event) }


    it 'is valid' do
      expect(subject.valid?)
    end
  end
end
