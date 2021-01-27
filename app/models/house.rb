class House < ApplicationRecord
    belongs_to :user
    belongs_to :category
    belongs_to :location
    has_many :reservations
end
