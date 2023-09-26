require 'rails_helper'

RSpec.describe Lodging, type: :model do
  it { should have_many(:lodging_confirmations) }
  it { should have_many(:users).through(:lodging_confirmations) }
end
