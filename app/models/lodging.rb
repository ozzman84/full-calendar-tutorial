class Lodging < ApplicationRecord
    has_many :lodging_confirmations
    has_many :users, through: :lodging_confirmations

  def calendar
    # binding.pry
    first_day = start_date.beginning_of_month.beginning_of_week(:monday)
    last_day = start_date.end_of_month.end_of_week(:monday)
    
    (first_day..(last_day)).to_a
  end
end
