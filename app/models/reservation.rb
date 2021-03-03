class Reservation < ApplicationRecord
    belongs_to :house
    belongs_to :user
    has_many :charges
end
