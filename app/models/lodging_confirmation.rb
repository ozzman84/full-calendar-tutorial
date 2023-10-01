class LodgingConfirmation < ApplicationRecord
  belongs_to :user
  belongs_to :lodging

  enum :status, {
    staying: "staying",
    away: "away"
  }
end
