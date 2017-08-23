require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to be }
  it { is_expected.to have_many :point_of_interests }
  it { should validate_presence_of :name }
  it { should validate_presence_of :sizetype }
  it { should validate_presence_of :hold }
end
