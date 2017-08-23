require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to be }

  it 'cannot be created without a name' do
    location = Location.create(sizetype: 'city', hold: 'The Reach')
    expect(location).not_to be_valid
  end

  it 'cannot be created without a sizetype' do
    location = Location.create(name: 'Markarth', hold: 'The Reach')
    expect(location).not_to be_valid
  end

  it 'cannot be created without a hold' do
    location = Location.create(name: 'Markarth', sizetype: 'city')
    expect(location).not_to be_valid
  end
end
