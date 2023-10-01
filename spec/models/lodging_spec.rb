require 'rails_helper'

RSpec.describe Lodging, type: :model do
  it { should have_many(:lodging_confirmations) }
  it { should have_many(:users).through(:lodging_confirmations) }

  it "returns full month calendars for the duration of the lodging" do
    lodging = FactoryBot.create(:lodging, start_date: Date.today, end_date: Date.tomorrow)

    expect(lodging.calendar).to eq([])
    expect(lodging.calendar.count).to eq(42)
  end
end
