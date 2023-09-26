require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:lodging_confirmations) }
  it { should have_many(:lodgings).through(:lodging_confirmations) }
end
