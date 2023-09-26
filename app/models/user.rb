class User < ApplicationRecord
    has_many :lodging_confirmations
    has_many :lodgings, through: :lodging_confirmations
end
