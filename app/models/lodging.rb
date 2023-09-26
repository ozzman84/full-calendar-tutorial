class Lodging < ApplicationRecord
    has_many :lodging_confirmations
    has_many :users, through: :lodging_confirmations
end
