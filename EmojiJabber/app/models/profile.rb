class Profile < ApplicationRecord
    validates :bio, presence: true
    belongs_to :user
end
