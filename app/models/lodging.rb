class Lodging < ApplicationRecord
    has_many :lodging_confirmations
    has_many :users, through: :lodging_confirmations

  def calendar
    # binding.pry
    first_day = Date.today.beginning_of_month.beginning_of_week(:monday)
    last_day = Date.today.end_of_month.end_of_week(:monday)
    
    (first_day..(last_day)).to_a
  end

    def combined_month
    calendar.map do |day|
      LodgingConfirmation.find_by(date: day) || day
    end
  end
end
