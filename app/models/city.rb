class City < ApplicationRecord
    extend FriendlyId
    # added friendly to make browser show city name
    friendly_id :name, use: :slugged
    
    has_many :posts, dependent: :destroy
end
