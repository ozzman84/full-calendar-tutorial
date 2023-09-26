require 'rails_helper'

RSpec.describe LodgingConfirmation, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:lodging) }
end
