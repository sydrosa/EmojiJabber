class Room < ApplicationRecord
    validates :room, uniqueness: true
    
    has_many :users
    has_many :messages
end
