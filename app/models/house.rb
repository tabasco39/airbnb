class House < ApplicationRecord
    belongs_to :user
    belongs_to :category,counter_cache:true
    has_many_attached :images

    

   
    belongs_to :category
    belongs_to :location
    has_many :reservations


    geocoded_by :localisation, :latitude => :lat, :longitude => :lng
    after_validation :geocode, if: :localisation_changed?
end
