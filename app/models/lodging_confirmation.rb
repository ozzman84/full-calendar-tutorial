class LodgingConfirmation < ApplicationRecord
  belongs_to :user
  belongs_to :lodging

  enum :status, {
    staying: "staying",
    away: "away"
  }

  def button_classes(date)
    classes = "mx-auto flex h-8 w-8 items-center justify-center rounded-full"

    if LodgingConfirmation.find_by_date(date).exists?
      classes << " text-white"
        status = LodgingConfirmation.find_by_date(date).status

      if status == "staying"
        classes << " bg-green-400"
      elsif status == "away"
        classes << " bg-red-400"
      end
    else
      classes << " text-gray-400 hover:bg-gray-200"

      if date == Date.today
        classes << " text-indigo-600 font-semibold"
      elsif date.month == Date.today.month
        classes << " text-gray-900"
      else
        classes << " text-gray-400"
      end
    end

    classes
  end
end
