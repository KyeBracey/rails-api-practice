require 'rails_helper'

RSpec.describe Location, type: :model do
  it { is_expected.to be }
  it { should validate_presence_of :name }
  it { should validate_presence_of :sizetype }
  it { should validate_presence_of :hold }
end
